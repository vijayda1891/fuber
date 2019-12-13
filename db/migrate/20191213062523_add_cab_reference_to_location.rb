class AddCabReferenceToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :cab, foreign_key: true
  end
end
