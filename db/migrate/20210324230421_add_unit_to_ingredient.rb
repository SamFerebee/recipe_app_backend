class AddUnitToIngredient < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :unit, :string
  end
end
