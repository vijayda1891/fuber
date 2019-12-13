class AddAddressToCabs < ActiveRecord::Migration[5.2]
  def change
    add_column :cabs, :address, :string
  end
end
