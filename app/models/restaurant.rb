class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :category_restaurants
  has_many :categories, through: :category_restaurants
end
