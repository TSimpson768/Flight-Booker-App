class AddFlightAirportAssociations < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :flights, :airports, column: :depart_id
    add_foreign_key :flights, :airports, column: :arrive_id

  end
end
