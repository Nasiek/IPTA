# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  [ "Clark", "Kent", "superman@email.com", "password" ],
  [ "Harry", "Potter", "harry@email.com", "password" ],
  [ "Hermoine", "Granger", "hermoine@email.com", "password" ],
  [ "Busta", "Rhymes", "busta@email.com", "password" ],
  [ "Ghengis", "Khan", "ghengis@email.com", "password" ],
  [ "Serena", "Williams", "serena@email.com", "password" ],
  [ "R2", "D2", "r2d2@email.com", "password" ],
  [ "Tooth", "Fairy", "tooth@email.com", "password" ],
  [ "Barack", "Obama", "barack@email.com", "password" ],
  [ "Scooby", "Doo", "scooby@email.com", "password" ],
  [ "Mr.", "Spock", "spock@email.com", "password" ]
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
  [ "Superflyer", "Earth", 10, 0],
  [ "Thunderbolt", "Mars", 10, 1],
  [ "Moonmagic", "Moon", 6, 2],
  [ "Sunburst", "Mars", 6, 3],
  [ "Starscream", "Ceres", 6, 4],
  [ "Jetfire", "Earth", 12, 5],
  [ "Millenium Falcon", "Earth", 10, 6],
  [ "Nostromo", "Earth", 6, 7],
  [ "Nebuchadnezzar", "Venus", 6, 8],
  [ "Mysterymachine", "Moon", 12, 9],
  [ "Enterprise", "Moon", 6, 10],
  [ "Nautilus", "Venus", 10, 0],
  [ "Jolly Roger", "Mars", 6, 1],
  [ "Astrotrain", "Venus", 6, 2],
  [ "Botany Bay", "Ceres", 6, 3],
]

ship_list.each do | vehicle_name, vehicle_location, vehicle_seats, user_id |
      Ship.create( vehicle_name: vehicle_name, vehicle_location: vehicle_location, vehicle_seats: vehicle_seats, user_id: user_id)
end
