class AddAddressToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :address, :text
  end
end
