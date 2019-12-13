class AddCustomerReferenceToRides < ActiveRecord::Migration[5.2]
  def change
    add_reference :rides, :customer, foreign_key: true
  end
end
