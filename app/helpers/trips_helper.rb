module TripsHelper

planet_distances = { "Venus" => 0,
                     "Earth" => 25,
                     "Moon" => 25.25,
                     "Mars" => 75.25,
                     "Ceres" => 190.25,
                     "Europa" => 415.25
}

Trip.distance = (Trip.destination - Trip.origin)

Trip.cost = (Trip.distance) * (Trip.seats) * (1000)



end
