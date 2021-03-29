class AddTotalRatingsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :total_ratings, :int
  end
end
