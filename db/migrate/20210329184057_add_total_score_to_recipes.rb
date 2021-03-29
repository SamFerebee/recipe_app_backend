class AddTotalScoreToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :total_score, :int
  end
end
