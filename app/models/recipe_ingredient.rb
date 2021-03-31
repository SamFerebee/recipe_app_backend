class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def ingredient_name
    self.ingredient.name
  end

  def calories
    self.ingredient.calories
  end

  def vegan 
    self.ingredient.vegan
  end

  def vegetarian
    self.ingredient.vegetarian
  end

  def unit
    self.ingredient.unit
  end
  
end
