class Guess < ApplicationRecord
  # Remember to create a migration!
  belongs_to :card
  belongs_to :round, foreign_key: "round_id"
end
