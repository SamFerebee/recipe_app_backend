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
end
