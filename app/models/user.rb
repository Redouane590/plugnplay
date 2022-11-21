class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :toys
  has_many :bookings
  has_many :bookings_as_owner, through: :toys, source: :bookings
  validates :bio, presence: true, length: { maximum: 200 }

end
