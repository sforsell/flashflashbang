class Card < ApplicationRecord

  belongs_to :deck

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true
end
