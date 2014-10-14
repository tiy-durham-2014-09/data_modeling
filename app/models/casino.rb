class Casino < ActiveRecord::Base
  has_many :games, foreign_key: "casino_id", class_name: "Game"
  has_many :players, through: :games
  has_many :profits, as: :winning

  validates :name, presence: true
end
