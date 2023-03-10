class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home contact]

  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @events = current_user.events
    @user = current_user
  end

  def booking
    @booking = Booking.find(params[:id])
  end

  def settings
    @user = current_user
  end

  def contact
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :activity)
  end
end
