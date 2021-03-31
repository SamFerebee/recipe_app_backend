class AddLikedRecipesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :liked_recipes, :jsonb
  end
end
