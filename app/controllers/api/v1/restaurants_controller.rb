class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.includes(:categories, reviews: :user)
    render json: @restaurants, :include => [:categories, :reviews]
  end


end
