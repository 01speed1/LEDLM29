class Sensor < ApplicationRecord
  has_many :sensor_tracks
  has_one :sensor_counter
end
