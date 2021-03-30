class IngredientsController < ApplicationController
    def index
        @all = Ingredient.all
        render json: @all
    end

    def get_proteins
        protein = Ingredient.all.select{|ingredient| ingredient.category == "protein"}
        render json: protein
    end

    def get_veggies
        veg = Ingredient.all.select{|ingredient| ingredient.category == "vegetable"}
        render json: veg
    end

    def get_sides
        sides = Ingredient.all.select{|ingredient| ingredient.category == "side"}
        render json: sides
    end
end
