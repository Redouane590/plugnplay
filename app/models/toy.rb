class Toy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :description, presence: true
  validates :photo_url, presence: true
  validates :price, presence: true, numericality: true
end
