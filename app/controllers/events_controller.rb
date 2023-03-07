class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      @events = Event.global_search(params[:search]).order("date ASC, time ASC")
      @reviews = Review.all
      @rating = @reviews.average(:rating)
      set_markers
      @activities = PublicActivity::Activity.order(created_at: :desc).limit(10)
    else
      @events = Event.all.order("date ASC, time ASC")
      set_markers
      @activities = PublicActivity::Activity.order(created_at: :desc).limit(10)
    end
  end

  def show
    @event = Event.find(params[:id])
    @user = current_user
    @chatroom = Chatroom.find_by(event_id: @event.id)
    @review = Review.new
    @actual_review = @event.reviews.find_by(user: current_user)
    @booking = Booking.new
    @reviews = Review.all
    @message = Message.new
    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      info_window_html: render_to_string(partial: "events/info_window_html", locals: {event: @event}),
      marker_html: render_to_string(partial: "marker")
    }]

    # User qui a créé l'événement
    @user_event = @event.user
    # calculer la moyenne des notes de chaque event de l'user
    @ratings = []
    # recuperer les notes de l'event sur lequel tu itères
    @user_event.events.each do |event|
      event.reviews.each do |review|
        @ratings << review.rating # équivalent à @ratings << event.reviews.average(:rating)
      end
    end
    # calculer la moyenne des notes de l'user
    @ratings = @ratings.compact
    if @ratings.empty?
      @user_rating = "Pas de note"
    else
      @user_rating = @ratings.sum / @ratings.size
    end
    # calculer le nombre de notes de l'user
    @user_reviews = @user_event.events.map { |event| event.reviews.count }.sum
    # calculer le nombre d'événements de l'user
    @user_events = @user_event.events.count

  end

  def new
    @event = Event.new
    # récupérer les sports
    @list = Sport.all.map { |sport| [sport.sport_name, sport.id] }
    # classer les sports par ordre alphabétique
    @ordered_list = @list.sort_by! { |sport| sport[0] }
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @user_id = current_user.id
    if @event.save
      @chatroom = Chatroom.new(event_id: @event.id)
      @chatroom.save
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
    params.require(:event).permit(:title, :description, :date, :time, :price, :level, :players_number, :duration, :address, :user_id, :sport_id, messages_attributes: [:content, :user_id, :chatroom_id], chatrooms_attributes: [:event_id], reviews_attributes: [:comment, :rating, :event_id, :user_id])
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def set_markers
    @markers = @events.where("date >= ?", Date.today).geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "events/info_window_html", locals: {event: event}),
        marker_html: render_to_string(partial: "marker", locals: {event: event})
      }
    end
  end
end
