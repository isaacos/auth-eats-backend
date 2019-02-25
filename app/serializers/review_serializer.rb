class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :restaurant_id, :user_id, :authentic, :rating, :user

  def owner
    {
      owner_id: self.object.user.id,
      owner_body: self.object.user.body

    }
  end
end
