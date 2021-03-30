class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :quantity, :ingredient_name, :calories, :vegan, :vegetarian
  has_one :recipe
  belongs_to :ingredient
end
