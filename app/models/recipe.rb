class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    has_many :comments

    def average_rating
        if total_ratings == 0
            return ["No ratings yet!"]
        end
        total_score / total_ratings
    end

    def calories
        self.recipe_ingredients.sum do |ingredient| 
            ingredient.calories * ingredient.quantity
        end
    end

    def vegan
        v = self.recipe_ingredients.any? do |ingredient|
            ingredient.vegan == false
        end
        return !v
    end

    def vegetarian
        v = self.recipe_ingredients.any? do |ingredient|
            ingredient.vegetarian == false
        end
        return !v
    end
end
