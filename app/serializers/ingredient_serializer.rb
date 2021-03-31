class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :category, :vegan, :vegetarian, :unit
end
