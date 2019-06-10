class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.includes(:categories, :reviews)
    render json: @restaurants, :include => [:categories, :reviews]
  end


end
