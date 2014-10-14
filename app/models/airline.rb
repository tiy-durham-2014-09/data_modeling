class Airline < ActiveRecord::Base

  has_many :terminals, through: :airports


  validates :cities, presence: :true
  validates :planes, presence: :true
  validates :routes, presence: :true
  validates :passengers, presence: true

  validates :cities, inclusion: {in: ['Dallas',
                                  'Miami',
                                  'Chicago',
                                  'Los Angeles',
                                  'New York',
                                  'Raleigh'],
                                  message: "%{value} is not a city this airline operates out of"}

end
