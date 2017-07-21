class Deck < ApplicationRecord
  # Remember to create a migration!
  validates :name, { presence: true }

  has_many :rounds
  has_many :cards
end
