class Track < ApplicationRecord
  validates :name, :duration_minutes, :duration_seconds, presence: true
end
