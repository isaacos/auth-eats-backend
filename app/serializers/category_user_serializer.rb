class CategoryUserSerializer < ActiveModel::Serializer
  attributes :id, :description, :permission, :user_id, :category_id
  belongs_to :user
  belongs_to :category
end
