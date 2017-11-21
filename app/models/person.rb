class Person < ApplicationRecord
  has_many :players
  has_many :teams, through: :players

  def add_to_team(team)
    team.players.create(person: self)
  end
end
