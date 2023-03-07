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

  def profile
    @user = current_user
    @users = User.all
    @events = @user.events
    @friendships = Friendship.where(friend_id: current_user.id , status: "accepted") + Friendship.where(user_id: current_user.id, status: "accepted")
    if params[:search].present?
      @users = User.where("first_name ILIKE :search OR last_name ILIKE :search", search: "%#{params[:search]}%")
    else
      @users = User.all
    end
    @friends_count = Friendship.where(friend_id: current_user.id , status: "accepted").count + Friendship.where(user_id: current_user.id, status: "accepted").count
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(20)
    @attended_event = Booking.where(user: current_user, booking_status: "Acceptée").count
    @created_event = @user.events
    @attended_event_count = @user.bookings.count
    @created_event_count = @user.events.count
    @bookings = Booking.where(user: current_user, booking_status: "Acceptée")
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
    params.require(:user).permit(:first_name, :last_name, :email, :activity)
  end
end
