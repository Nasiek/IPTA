class Ship < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :trips
  mount_uploader :avatar, AvatarUploader

  validates :veh_name, :veh_location, :seats, :user_id, presence: true


end
