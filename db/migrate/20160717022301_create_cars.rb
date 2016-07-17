class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.text :note
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
