class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings

  validates :name, presence: true,
                   uniqueness: true
  validates :description, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
