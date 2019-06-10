class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :category, :url, :image_url, :address, :phone, :lat, :lng, :reviews, :slug
  has_many :categories

end
