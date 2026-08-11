class CreatePets < ActiveRecord::Migration[8.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :location
      t.date :found_on
      t.string :species

      t.timestamps
    end
  end
end
