class Games < ActiveRecord::Base
  belongs_to :player
  belongs_to :casino

  validates :name, includesion: {in: ['Texas Hold \'Em',
                                      'Blackjack'
                                      'Roulette'
                                      'Slots' ],
                                      message: "%{value} is not a valid game" }
end
