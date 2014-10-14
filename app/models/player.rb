class Player < ActiveRecord::Base
  has_many :casinos
  has_many :games
  has_many :profits, as: :winning

  validates :birth_year, numericality: :greater_than_or_equal_to Time.now.years_ago(21).to_date, 
end
