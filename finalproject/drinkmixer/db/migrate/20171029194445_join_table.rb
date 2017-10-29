class JoinTable < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :default, :boolean
  end
end
