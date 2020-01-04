class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.integer :min_booking_duration
      t.references :user, foreign_key: true
      t.references :spaceship, foreign_key: true

      t.timestamps
    end
  end
end
