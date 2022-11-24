class Boat < ApplicationRecord
  CATEGORY = ["Voilier", "Catamaran", "Bateau electrique", "Bateau pirate", "Bateau de luxe"]

  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :address, presence: true, length: { minimum: 4 }
  validates :category, presence: true
  validates :title, presence: true
end
