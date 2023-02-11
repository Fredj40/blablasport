class BookingsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    if @event.players_number > @event.bookings.count
      @booking = @event.bookings.create(user: current_user, booking_status: "En attente de validation")
      redirect_to event_path(@event), notice: "Votre demande de réservation a bien été prise en compte"
    else
      redirect_to event_path(@event), alert: "Il n'y a plus de place disponible pour cet événement"
    end
  end

  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: params[:booking_status])
    redirect_to events_path if @booking.booking_status == "Acceptée"
    redirect_to bookings_path if @booking.booking_status == "Refusée"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
