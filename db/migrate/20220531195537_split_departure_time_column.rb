class SplitDepartureTimeColumn < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.remove :departure_time
      t.date :departure_date
      t.time :departure_time
    end
  end
end
