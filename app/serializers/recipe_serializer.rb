class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :image, :instructions, :calories, :vegan, :vegetarian
  has_many :comments
  has_many :recipe_ingredients
end
