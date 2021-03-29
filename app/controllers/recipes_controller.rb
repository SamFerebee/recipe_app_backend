class RecipesController < ApplicationController

    def index
        @all = Recipe.all
        render json: @all
    end

    def add_comment
        recipe = Recipe.find(params[:recipeId])
        user = User.find(params[:userId])
        comment = Comment.create(comment: params[:comment], recipe: recipe, user: user, rating: params[:score])
        render json: comment       
    end

end
