class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :description, presence: true
  validates :photo_url, presence: true
  validates :price, presence: true, numericality: true
  validates :address, presence: true, length: { minimum: 4 }
end
