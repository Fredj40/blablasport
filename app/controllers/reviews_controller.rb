class ReviewsController < ApplicationController
  before_action :set_event, only: %i[new create destroy]

  def new
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    @review.event = @event
    @review.user = @user
    if @review.save
      redirect_to event_path(@event)
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  # def destroy
  #   @user = current_user
  #   @review.user = @event
  #   @review.destroy
  #   redirect_to event_path(@event), status: :see_other
  # end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
