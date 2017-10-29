class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :creator
    end
    remove_column :drinks, :default
    remove_column :drinks, :drink_id
  end
end
