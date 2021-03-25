class IngredientsController < ApplicationController
    def index
        @all = Ingredient.all
        render json: @all
    end
end
