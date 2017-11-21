class Team < ApplicationRecord
  belongs_to :competition
  has_many :players
  has_many :person, through: :players
end
  