class Api::V1::ReviewsController < ApplicationController

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    render json: @review
  end

  private

  def review_params
    params.require(:review).permit(:body, :user_id, :restaurant_id, :authentic, :rating)
  end

end
