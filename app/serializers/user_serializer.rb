class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :liked_recipes
end
