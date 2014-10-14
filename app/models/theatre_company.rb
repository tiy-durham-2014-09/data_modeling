class TheatreCompany < ActiveRecord::Base
  has_many :plays
  has_many :actors, through: :plays
  has_many  :scripts, as: :scriptable

  validates :name, presence: true
  validates :location, presence: true
end
