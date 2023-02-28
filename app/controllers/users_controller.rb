class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.all
    @events = @user.events
    @friendships = Friendship.where(friend_id: @user.id , status: "accepted") + Friendship.where(user_id: @user.id, status: "accepted")
    if params[:search].present?
      @users = User.where("first_name ILIKE :search OR last_name ILIKE :search", search: "%#{params[:search]}%")
    else
      @users = User.all
    end
    @friends_count = Friendship.where(friend_id: @user.id , status: "accepted").count + Friendship.where(user_id: @user.id, status: "accepted").count
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(10)
    @attended_event = @user.bookings
    @created_event = @user.events
    @attended_event_count = @user.bookings.count
    @created_event_count = @user.events.count
    @bookings = current_user.bookings
  end
end
