class AddColumnToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :favorite_food
  end
end
