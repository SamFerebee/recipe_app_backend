class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :type, :vegan, :vegetarian
end
