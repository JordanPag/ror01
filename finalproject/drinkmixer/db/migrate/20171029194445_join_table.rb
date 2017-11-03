class JoinTable < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :default, :boolean
    add_column :drinks, :image, :string
  end
end
