class ShipTrip < ApplicationRecord
	belongs_to :trip 
	belongs_to :ship
end
