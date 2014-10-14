class BeerStyle < ActiveRecord::Base
  has_many :pairings
  has_many :cheese_styles, through: :pairings


  beers = ['brown', 'porter', 'stout', 'amber ale', 'blonde ale', 'pale ale', 'american ipa', 'sour',
           'pale lager', 'amber lager', 'light belgian', 'belgian dubbel', 'belgian trippel',
           'belgian dark strong', 'saison', 'czech pilsner']

  beers.each do |beer|
    BeerStyle.create(title: beer)
  end

end
