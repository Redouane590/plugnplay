class Boat < ApplicationRecord
  CATEGORY = ["Bateau à voile", "Bateau electrique", "Bateau pirate", "Bateau de luxe"]

  belongs_to :user
  has_many :bookings
  validates :description, presence: true
  validates :photo_url, presence: true
  validates :price, presence: true, numericality: true
  validates :address, presence: true, length: { minimum: 4 }
  validates :category, presence: true
  validates :title, presence: true
end
