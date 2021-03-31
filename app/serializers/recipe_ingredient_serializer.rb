class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :quantity, :ingredient_name, :calories, :vegan, :vegetarian, :unit
  has_one :recipe
  belongs_to :ingredient
end
