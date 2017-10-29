class CreateDrinksIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks_ingredients, id: false do |t|
      t.belongs_to :drinks
      t.belongs_to :ingredients
    end
  end
end
