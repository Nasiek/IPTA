class Trip < ApplicationRecord
    belongs_to :user
    has_many :ship_trips
    has_many :ships, :through => :ship_trips

    validates :description, :origin, :destination, :seats, :user_id, presence: true


    validate :cost_minimum


    private

    def cost_minimum
        if cost < 1000
          errors.add(:cost, "IPTA is not equipped to transport below $1000. Please try our subsidiary MoonExpress")
        end
    end
end
