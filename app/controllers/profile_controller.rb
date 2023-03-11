class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :follow, :unfollow, :accept, :decline, :cancel]


  def profile
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(20)
    @user = current_user
    @users = User.all
    @events = @user.events
    @bookings = Booking.where(user: current_user, booking_status: "Acceptée")

    @activities.each do |activity|
      @activity_id = activity.trackable.id
    end

    @Booking = Booking.find_by(event_id: @activity_id, user: current_user)
    @Event = Event.find_by(id: @activity_id, user: current_user)

  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end

  def search
    if params[:search].present?
      @users = User.global_search(params[:search])
    else
      "Aucun résultat"
    end
  end

  def show
    @events_creator = @user.events
    @bookings = Booking.where(user: @user, booking_status: "Acceptée")
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(20)
  end

  def follow
    @user.create_activity :follow
    current_user.send_follow_request_to(@user)
    redirect_to profile_path
  end

  def unfollow
    @user.create_activity :unfollow
    make_it_an_unfriend_request
    current_user.unfollow(@user)
    redirect_to profile_path
  end

  def accept
    @user.create_activity :friend_accept
    current_user.accept_follow_request_of(@user)
    make_it_a_friend_request
    redirect_to profile_path
  end

  def decline
    @user.create_activity :friend_decline
    current_user.decline_follow_request_of(@user)
    redirect_to profile_path
  end

  def cancel
    @user.create_activity :friend_cancel
    current_user.remove_follow_request_for(@user)
    redirect_to profile_path
  end


  private

  def make_it_an_unfriend_request
    @user.unfollow(current_user) if @user.mutual_following_with?(current_user)
  end

  def make_it_a_friend_request
    current_user.send_follow_request_to(@user)
    @user.accept_follow_request_of(current_user)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
