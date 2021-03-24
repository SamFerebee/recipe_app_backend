class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.string :type
      t.boolean :vegan
      t.boolean :vegetarian

      t.timestamps
    end
  end
end
