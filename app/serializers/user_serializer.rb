class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :password, :email, :phone
  has_many :category_user
end
