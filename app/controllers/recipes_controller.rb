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

    def create_recipe
        recipe = Recipe.create(
            name: params[:name],
            description: "Lasagna is good",
            category: "Entree",
            image: "https://thestayathomechef.com/wp-content/uploads/2017/08/Most-Amazing-Lasagna-2-e1574792735811.jpg",
            instructions: [["step 1"], ["step 2"], ["step 3"]],
            total_score: 0,
            total_ratings: 0
        )
        ingredient_list = params[:ingredients]
        ingredient_list.each do |entry|
            RecipeIngredient.create(quantity: entry["quantity"], ingredient: entry["ingredient"], recipe: recipe)
        end
        render json: recipe
    end

end
