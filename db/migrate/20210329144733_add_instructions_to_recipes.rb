class AddInstructionsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :instructions, :jsonb
  end
end
