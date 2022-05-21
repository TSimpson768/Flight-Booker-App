class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :depart_id
      t.integer :arrive_id
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
