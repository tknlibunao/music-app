class Album < ApplicationRecord
  validates :name, :kind, :duration_hours, :duration_minutes, :duration_seconds, presence: true
end
