class AddColumnToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :favorite_food, :string
  end
end
