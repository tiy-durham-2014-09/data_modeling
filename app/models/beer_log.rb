class BeerLog < ActiveRecord::Base
  has_and_belongs_to_many :beer_style
  has_many :ratings, :as => :rateable

  validates :brewer, :title, presence: true
end
