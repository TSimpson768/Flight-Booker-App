class Airport < ApplicationRecord
  has_many :departures, class_name: "Flight", foreign_key: "depart_id"
  has_many :arrivals, class_name: "Flight", foreign_key: "arrive_id"
end
