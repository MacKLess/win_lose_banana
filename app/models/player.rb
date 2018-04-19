class Player < ApplicationRecord
  belongs_to :game
  has_many :player_rounds
  has_many :rounds, through: :player_rounds
end
