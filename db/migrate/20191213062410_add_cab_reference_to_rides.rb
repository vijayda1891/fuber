class AddCabReferenceToRides < ActiveRecord::Migration[5.2]
  def change
    add_reference :rides, :cab, foreign_key: true
  end
end
