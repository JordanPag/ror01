class AddColumnToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :default, :boolean
  end
end
