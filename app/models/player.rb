class Player < ActiveRecord::Base
  has_many :deeds
  has_many :properties, through: :deeds

  validates :name, presence: true
end
