class User < ApplicationRecord
  has_many :spaceships
  has_many :bookings

  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A.*@.*\.com\z/ }
  validates :password, presence: true,
                       lenght: { minimum: 6 }
end
