class Ship < ApplicationRecord
  belongs_to :user
  has_many :ship_trips
  has_many :trips, :through => :ship_trips
  mount_uploader :avatar, AvatarUploader

  validates :veh_name, :veh_location, :seats, :user_id, presence: true


end
