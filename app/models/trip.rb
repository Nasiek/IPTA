class Trip < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :ships

    before_save :calculate_distance
    before_save :calulate_cost


end
