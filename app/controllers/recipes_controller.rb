class RecipesController < ApplicationController

    def index
        @all = Recipe.all
        render json: @all
    end

    def show
        @recipe = Recipe.find(params[:id])
        render json: @recipe
    end
    
    def add_comment
        recipe = Recipe.find(params[:recipeId])
        score = recipe.total_score
        score += params[:score].to_i
        recipe.update(total_score: score)
        rates = recipe.total_ratings
        rates += 1
        recipe.update(total_ratings: rates)
        user = User.find(params[:userId])
        comment = Comment.create(comment: params[:comment], recipe: recipe, user: user, rating: params[:score])
        temp = user.comment_history
        temp.push(params[:recipeId])
        user.update(comment_history: temp)
        render json: comment       
    end

    def get_rating
        recipe = Recipe.find(params[:id])
        render json: {amount: recipe.total_ratings, score: recipe.total_score}
    end

    def create_recipe
        recipe = Recipe.create(
            name: params[:name],
            description: params[:description],
            category: params[:category],
            image: params[:picture],
            instructions: params[:instructions],
            total_score: 0,
            total_ratings: 0
        )
        ingredient_list = params[:ingredients]
        ingredient_list.each do |entry|
            ing = Ingredient.find_by(name: entry["ingredient"])
            RecipeIngredient.create(quantity: entry["quantity"], ingredient: ing, recipe: recipe)
        end
        render json: recipe
    end
    

end
