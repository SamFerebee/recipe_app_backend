class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :image, :instructions, :comments
end
