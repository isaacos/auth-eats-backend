class User < ApplicationRecord
  has_many :reviews
  has_many :category_user
  has_many :categories, through: :category_user
end
