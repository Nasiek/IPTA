class ShipTripJoin < ApplicationRecord
	belongs_to :trip
  belongs_to :ship
end
