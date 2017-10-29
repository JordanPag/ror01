class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :ingredient_id, :integer
    add_column :ingredients, :drink_id, :integer
  end
end
