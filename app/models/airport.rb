class Airport < ActiveRecord::Base
  belongs_to :cities
  has_many :airlines


  validates :terminals, presence: :true
  validates :planes, presence: :true
  validates :airlines, presence: :true
end
