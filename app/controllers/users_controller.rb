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
    @activities = PublicActivity::Activity.order(created_at: :desc).limit(10)
  end
end 
