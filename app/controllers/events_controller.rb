class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search].present?
      # @events = Event.search_by_sport_and_adress(params[:search])
      @events = Event.global_search(params[:search])

      # @reviews = Review.all
      # @rating = @reviews.average(:rating)

# set_markers

    else
      @events = Event.all

# set_markers

    end
  end

  def show
    @event = Event.find(params[:id])
    # @review = Review.new

# set_markers

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
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
    params.require(:event).permit(:title, :description, :date, :time, :price, :city, :level, :players_number, :duration, :address, :user_id, :sport_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def set_markers
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: event }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end
end