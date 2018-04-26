class Trip < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :ships

    validates :description, :origin, :destination, :seats, :user_id, presence: true


    validate :cost_minimum


    private

    def cost_minimum
        if cost < 1000
          errors.add(:cost, "IPTA is not equipped to transport below $1000. Please try our subsidiary MoonExpress")
        end
    end
end
