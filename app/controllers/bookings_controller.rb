class BookingsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    if event.fully_booked?
      redirect_to event_path(event), alert: "Désolé, cet événement est complet"
    else
      booking = event.bookings.build(booking_params)
      booking.save
      redirect_to event_path(event), notice: "Votre demande de réservation est prise en compte"
    end
  end

  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def show
    @booking = Booking.find(params[:id])
    @event = Event.find(params[:event_id])
  end

  def index
    @bookings = Booking.where(user: current_user)
    @events = Event.all.order(date: :DESC)
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(10)
  end

  def edit
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to events_path
  end

  def approve
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: "Acceptée")
    redirect_to dashboard_path, notice: "La réservation a bien été acceptée"
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: "Refusée")
    redirect_to dashboard_path, notice: "La réservation a bien été refusée"
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: "Annulée")
    @booking.destroy
    redirect_to dashboard_path, notice: "La réservation a bien été annulée"
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :booking_status)
  end

end
