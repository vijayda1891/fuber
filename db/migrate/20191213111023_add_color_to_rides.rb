class AddColorToRides < ActiveRecord::Migration[5.2]
  def change
    add_column :rides, :color, :string
  end
end
