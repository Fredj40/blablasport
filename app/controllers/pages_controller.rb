class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]

  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @events = current_user.events
    @user = current_user
  end

  def profile
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

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
