class FriendsController < ApplicationController
  before_action :set_user

  def index
    @search_results = []
    @friends = @user.friends
    @users = User.all
  end

  def search
    @search_results = User.where('first_name LIKE ?', "%#{params[:first_name]}%")
  end

  def add
    friend = User.find(params[:id])
    @user.friends << friend
    redirect_to friends_path
  end

  private

  def set_user
    @user = current_user
  end
end
