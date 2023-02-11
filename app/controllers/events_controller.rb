class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      @events = Event.global_search(params[:search]).order("date ASC, time ASC")
      @reviews = Review.all
      @rating = @reviews.average(:rating)
      set_markers
    else
      @events = Event.all.order("date ASC, time ASC")
      set_markers
    end
  end

  def show
    @event = Event.find(params[:id])
    # User qui a créé l'événement
    @user = @event.user
    # recupérer les events de l'user
    @user_events = @user.events
    # calculer la moyenne des notes de chaque event de l'user
    @ratings = []
    @user_events.each do |event|
      # recuperer les notes de l'event sur lequel tu itères
      @ratings << event.reviews.average(:rating)
      # event.reviews.each do |review|
      #   @ratings << review.ratings
      # end
    end
    # calculer la moyenne des notes de l'user
    @average_rating = @ratings.sum / @ratings.size

    # Récuperer les reviews de l'événement
    @reviews = @event.reviews

    @user = current_user
    @review = Review.new
    @reviews = Review.all
    @has_already_reviewed = @reviews.where(user_id: @user.id, event_id: @event.id).exists?
    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      info_window_html: render_to_string(partial: "events/info_window_html", locals: {event: @event}),
      marker_html: render_to_string(partial: "marker")
    }]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @user_id = current_user.id
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path(@event), status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :time, :price, :level, :players_number, :duration, :address, :user_id, :sport_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def set_markers
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "events/info_window_html", locals: {event: event}),
        marker_html: render_to_string(partial: "marker", locals: {event: event})
      }
    end
  end
end
