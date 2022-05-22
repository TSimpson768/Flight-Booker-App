# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(name: "Leeds Bradford", code: "LBA")
Airport.create(name: "Edingburgh", code: "EDI")
Airport.create(name: "Inverness", code: "INV")
Airport.create(name: "Wick John O Groats", code:"WCK")

Flight.create(depart_id: 1, arrive_id: 2, departure_time: "2022-05-23 15:00", duration: 60 )
Flight.create(depart_id: 2, arrive_id: 1, departure_time: "2022-05-23 19:00", duration: 50 )
Flight.create(depart_id: 2, arrive_id: 4, departure_time: "2022-05-23 17:00", duration: 90 )
Flight.create(depart_id: 4, arrive_id: 2, departure_time: "2022-05-24 07:00", duration: 85 )
