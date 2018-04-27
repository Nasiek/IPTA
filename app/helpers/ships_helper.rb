module ShipsHelper


def seat_counter(ship, trip)
  @seats_left = ship.seats - trip.seats
  ship.update_attribute(:seats, @seats_left)

# when ship.seat == 0 then say ship is full

end
