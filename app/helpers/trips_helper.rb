module TripsHelper

planet_distances = { "Venus" => 0,
                     "Earth" => 25,
                     "Moon" => 25.25,
                     "Mars" => 75.25,
                     "Ceres" => 190.25,
                     "Europa" => 415.25
                    }

def calculate_distance
    @distance = Trip.distance
    @distance = (Trip.destination - Trip.origin)
    @distance.save


end



def calculate_cost
    @cost = Trip.cost
    @cost = (Trip.distance) * (Trip.seats) * (1000)
    @cost.save


end
