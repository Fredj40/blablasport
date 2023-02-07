class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.event = Event.find(params[:event_id])
    @booking.user = current_user
    if @booking.save
      redirect_to event_path(@booking.event)
    else
      render 'events/show'
    end
  end

  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def index
    @bookings = Booking.all
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
