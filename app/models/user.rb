class User < ApplicationRecord
  # Remember to create a migration!
  validates :username, { presence: true, uniqueness: true }

  has_many :rounds
  has_many :guesses, through: :rounds

  has_secure_password
end
