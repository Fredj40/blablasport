class ReviewsController < ApplicationController
  before_action :set_event, only: %i[new create destroy]

  def new
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    @review.rating = params["review"]["rating"][0].to_i
    @review.event = @event
    @review.user = @user
    if @review.save
      redirect_to event_path(@event)
    else
      render 'events/show', status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    @event = Event.find(params[:event_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
