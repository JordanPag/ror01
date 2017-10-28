class AddAnimalIdToVisits < ActiveRecord::Migration[5.1]
  def change
    add_column :visits, :animal_id, :integer
  end
end
