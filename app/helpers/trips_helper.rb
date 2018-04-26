module TripsHelper

planet_distances = { "Venus" => 0,
                     "Earth" => 25,
                     "Moon" => 25.25,
                     "Mars" => 75.25,
                     "Ceres" => 190.25,
                     "Europa" => 415.25
                    }

def calculate_distance(t)
    # @distance = Trip.distance
    planet_distances[t.destination] - planet_distances[t.origin]


end



def calculate_cost(t)
    (planet_distances[t.destination] - planet_distances[t.origin]) * t.seats * 1000 

end
end