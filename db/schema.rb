# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_16_205059) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "depart_id"
    t.integer "arrive_id"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "departure_date"
    t.time "departure_time"
  end

  create_table "passenger_bookings", force: :cascade do |t|
    t.integer "passenger_id"
    t.integer "booking_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "address2"
    t.string "address3"
    t.string "address4"
    t.string "address5"
    t.string "postcode"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "flights", "airports", column: "arrive_id"
  add_foreign_key "flights", "airports", column: "depart_id"
  add_foreign_key "passenger_bookings", "bookings"
  add_foreign_key "passenger_bookings", "passengers"
end
