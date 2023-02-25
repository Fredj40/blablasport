class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:update, :destroy]

  def search
    @friendships = current_user.friendships
    if params[:search_term].present?
      @users = User.where("lower(first_name) LIKE ?", "%#{params[:search_term]&.downcase}%")
      respond_to do |format|
        format.json { render json: @users }
        format.js { render 'search' }
      end
    end
  end

  def friendslist
    @request_friend = Friendship.where(friend_id: current_user.id, status: "pending")
    @users = User.all
    @friendships = Friendship.where(friend_id: current_user.id , status: "accepted") + Friendship.where(user_id: current_user.id, status: "accepted")
    @request_friend_count = Friendship.where(friend_id: current_user.id, status: "pending").count
  end

  def create
    @friend = User.find(params[:friend_id])
    @friendship = current_user.friendships.find_or_initialize_by(friend: @friend)
    if @friendship.new_record? && @friendship.save
      flash[:notice] = "Demande d'ami envoyée avec succès"
    else
      flash[:alert] = "vous avez déjà demandé à être ami"
    end
  end

  def update
    if @friendship.update(status: params[:status])
      flash[:notice] = "Statut mis à jour avec succès"
    else
      flash[:alert] = "Impossible de mettre à jour le statut"
    end
    redirect_to friendships_path
  end

  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.update(status: "accepted")
    redirect_to friendships_path
  end

  def decline
    friendship = Friendship.find(params[:id])
    friendship.destroy
    redirect_to friendships_path
  end

  def destroy
    friendship = Friendship.find(params[:id])
    if @friendship.destroy
      flash[:notice] = "Ami supprimé avec succès"
    else
      flash[:alert] = "Impossible de supprimer l'ami"
    end
    redirect_to friendships_path
  end

  private

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end

end
