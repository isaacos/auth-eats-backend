class Category < ApplicationRecord
  has_many :category_restaurants
  has_many :restaurants, through: :category_restaurants
  has_many :category_user
  has_many :users, through: :category_users
end
