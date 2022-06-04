class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport" , foreign_key: "depart_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrive_id"
  has_many :bookings

  def flight_info
    "#{departure_airport.name} to #{arrival_airport.name} at #{format_departure_time}"
  end

  private

  def format_departure_time
    formated_hour = departure_time.hour < 10 ? "0#{departure_time.hour}" : departure_time.hour.to_s
    formated_min =  departure_time.min < 10 ? "0#{departure_time.min}" : departure_time.min.to_s
    "#{formated_hour}:#{formated_min}"
  end
end
