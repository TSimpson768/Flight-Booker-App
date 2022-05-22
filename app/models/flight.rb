class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "airport" , foreign_key: "depart_id"
  belongs_to :arrival_airport, class_name: "airport", foreign_key: "arrive_id"
end