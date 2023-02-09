class ReviewsController < ApplicationController
  before_action :set_event, only: %i[new create]

  def new
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    @review.event = @event
    if @review.save
      redirect_to event_path(@event)
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
