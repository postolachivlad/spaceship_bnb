class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spaceship

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :end_date, numericality: { greater_than: :start_date }

  validates :min_booking_duration, presence: true
end
