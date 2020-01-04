class User < ApplicationRecord
  has_many :spaceships
  has_many :bookings
end
