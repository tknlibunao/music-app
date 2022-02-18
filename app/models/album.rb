class Album < ApplicationRecord
  has_one_attached :cover_art
  validates :name, :kind, :duration_hours, :duration_minutes, :duration_seconds, presence: true
end
