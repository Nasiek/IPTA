class ShipTripJoin < ApplicationRecord
	belongs_to :trips
  belongs_to :ships
end
