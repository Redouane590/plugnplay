class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toy
  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :start_date, comparison: { less_than_or_equal_to: :end_date }
end
