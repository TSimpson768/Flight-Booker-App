class Passenger < ApplicationRecord
  has_and_belongs_to_many :bookings, join_table: "passenger_bookings"
end
