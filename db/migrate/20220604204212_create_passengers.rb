class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :address5
      t.string :postcode
      t.date :date_of_birth
      t.timestamps
    end

    create_table :passenger_bookings do |t|
      t.integer :passenger_id
      t.integer :booking_id
    end

    add_foreign_key :passenger_bookings, :passengers
    add_foreign_key :passenger_bookings, :bookings
  end
end
