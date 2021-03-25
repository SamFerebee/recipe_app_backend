class ChangeTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    rename_column :ingredients, :type, :category
  end
end
