class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  def pending?
    self.status == "pending"
  end
end
