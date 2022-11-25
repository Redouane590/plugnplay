class Booking < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  belongs_to :user
  belongs_to :boat
  def pending?
    self.status == "pending"
  end
end
