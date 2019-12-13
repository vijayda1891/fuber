class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
      t.string :car_name
      t.string :car_type
      t.string :car_number
      t.integer :car_capacity
      t.string :car_color
      t.integer :status

      t.timestamps
    end
  end
end
