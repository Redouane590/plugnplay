class RenameToysToBoats < ActiveRecord::Migration[7.0]
  def change
    rename_table :toys, :boats
  end
end
