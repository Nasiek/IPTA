# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  [ "Clark", "Kent", "superman@email.com", "123" ],
  [ "Harry", "Potter", "harry@email.com", "123" ],
  [ "Hermoine", "Granger", "hermoine@email.com", "123" ],
  [ "Busta", "Rhymes", "busta@email.com", "123" ],
  [ "Ghengis", "Khan", "ghengis@email.com", "123" ],
  [ "Serena", "Williams", "serena@email.com", "123" ],
  [ "R2", "D2", "r2d2@email.com", "123" ],
  [ "Tooth", "Fairy", "tooth@email.com", "123" ],
  [ "Barack", "Obama", "barack@email.com", "123" ],
  [ "Scooby", "Doo", "scooby@email.com", "123" ],
  [ "Mr.", "Spock", "spock@email.com", "123" ]
]

user_list.each do |fname, lname, email, encrypted_password|
    User.create( fname: fname, lname: lname, email: email, encrypted_password: encrypted_password)
end


trip_list = [
  [ "freight", "Earth", "Mars", 50.25, 2, 100500, 0],
  [ "passengers", "Venus", "Mars", 75.25, 1, 75250, 1],
  [ "freight", "Moon", "Ceres", 165, 2, 330000, 2],
  [ "passengers", "Mars", "Europa", 340, 3, 1020000, 3],
  [ "freight", "Ceres", "Europa", 225, 4, 900000, 4],
  [ "passengers", "Earth", "Moon", 0.25, 5, 1250, 5],
  [ "freight", "Earth", "Ceres", 165.25, 1, 165250, 6],
  [ "passengers", "Earth", "Europa", 390.25, 2, 780500, 7],
  [ "freight", "Venus", "Moon", 25.25, 3, 75750, 8],
  [ "passengers", "Moon", "Mars", 50, 4, 200000, 9],
  [ "freight", "Moon", "Europa", 390, 5, 1950000, 10],
  [ "passengers", "Venus", "Europa", 415.25, 1, 415250, 0],
  [ "freight", "Mars", "Ceres", 115, 2, 230000, 1],
  [ "passengers", "Venus", "Earth", 25, 3, 75000, 2],
  [ "freight", "Venus", "Ceres", 190.25, 4, 761000, 3],
]

trip_list.each do |description, origin, destination, distance, seats, cost, user_id|
    Trip.create( description: description, origin: origin, destination: destination, distance: distance, seats: seats, cost: cost, user_id: user_id)
end


ship_list = [
  [ "Earth", 10, 0],
  [ "Mars", 10, 1],
  [ "Moon", 6, 2],
  [ "Mars", 6, 3],
  [ "Ceres", 6, 4],
  [ "Earth", 12, 5],
  [ "Earth", 10, 6],
  [ "Earth", 6, 7],
  [ "Venus", 6, 8],
  [ "Moon", 12, 9],
  [ "Moon", 6, 10],
  [ "Venus", 10, 0],
  [ "Mars", 6, 1],
  [ "Venus", 6, 2],
  [ "Ceres", 6, 3],
]

ship_list.each do | vehicle_name, vehicle_location, vehicle_seats, user_id |
      Ship.create( vehicle_name: vehicle_name, vehicle_location: vehicle_location, vehicle_seats: vehicle_seats, user_id: user_id)
end
