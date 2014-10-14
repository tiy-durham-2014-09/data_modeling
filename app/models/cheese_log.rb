class CheeseLog < ActiveRecord::Base
  has_many :ratings, :as => :rateable
  has_and_belongs_to_many :cheese_styles
end
