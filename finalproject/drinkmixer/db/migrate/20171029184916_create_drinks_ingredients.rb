class CreateDrinksIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks_ingredients, id: false do |t|
      t.belongs_to :drink
      t.belongs_to :ingredient
    end
  end
end
