class RecipesController < ApplicationController

    def index
        @all = Recipe.all
        render json: @all
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

end
