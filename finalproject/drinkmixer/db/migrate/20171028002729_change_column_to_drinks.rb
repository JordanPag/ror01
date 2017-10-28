class ChangeColumnToDrinks < ActiveRecord::Migration[5.1]
  def change
    rename_column :drinks, :parent_id, :drink_id
  end
end
