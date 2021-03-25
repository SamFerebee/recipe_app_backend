class RecipesController < ApplicationController

    def index
        @all = Recipe.all
        render json: @all
    end
end
