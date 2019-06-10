class Api::V1::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.includes(:reviews, :categories).all
    render json: @restaurants, :includes => [:reviews, :categories]
  end


end
