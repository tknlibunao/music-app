class Artist < ApplicationRecord
  has_one_attached :avatar
  validates :name, :bio, presence: true
end
