class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.references :user, null: false, foreign_key: true
      t.references :toy, null: false, foreign_key: true
      t.string :status
      t.date :end_date

      t.timestamps
    end
  end
end
