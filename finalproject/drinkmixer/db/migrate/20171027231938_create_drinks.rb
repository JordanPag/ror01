class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :creator
      t.integer :parent_id
    end
  end
end
