class Airport < ActiveRecord::Base


  validates :terminals, presence: :true
  validates :planes, presence: :true
  validates :airlines, presence: :true
end
