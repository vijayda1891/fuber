class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :pickup
      t.string :drop
      t.integer :ride_amount

      t.timestamps
    end
  end
end
