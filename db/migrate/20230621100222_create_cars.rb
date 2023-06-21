class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars, id: :uuid do |t|
      t.string :mark, null: false
      t.string :model, null: false
      t.integer :year, null: false
      t.integer :price, null: false
      t.string :bodytype
      t.integer :mileage, null: false
      t.boolean :used, null: false
      t.integer :volume, null: false
      t.integer :power, null: false
      t.string :fuel, null: false
      t.string :transmission, null: false
      t.string :drivetrain
      t.string :color
      t.string :options

      t.timestamps
    end
  end
end
