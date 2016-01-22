class Player < ActiveRecord::Base
  validates :team, :first_name, :last_name, :age, :height, :weight, :position, :salary, presence: true
  validate :team_cannot_have_more_than_13_players
  belongs_to :team

  def team_cannot_have_more_than_13_players
    totalPlayers = Team.find(team_id).players.length

    if totalPlayers >= 13
      errors.add(:base, "This team already has the maximum number of players allowed")
    end
  end


  def full_name
    first_name + ' ' + last_name
  end

  def average_fielding
    (fieldGrounder + fieldLiner + fieldFlyball + fieldPopup)/4
  end

  def average_throwing
    (throwShort + throwMedium + throwLong)/3
  end

  def to_s
    full_name
  end

end
