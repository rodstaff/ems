class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.text :note

      t.timestamps null: false
    end
  end
end
