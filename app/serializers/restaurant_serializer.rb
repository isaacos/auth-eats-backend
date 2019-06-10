class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :category, :url, :image_url, :address, :phone, :lat, :lng, :reviews, :slug
  has_many :categories

  def reviews
    self.object.reviews.map do |review|
        {
            id: review.id,
            body: review.body,
            user: review.user,
            authentic: review.authentic,
            rating: review.rating

        }
    end
  end

end
