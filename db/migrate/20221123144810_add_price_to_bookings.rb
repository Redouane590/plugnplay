class AddPriceToBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :price, :float
  end
end
