class Rating < ActiveRecord::Base
  belongs_to :rateable, :polymorphic => true

  validates :valid_rating?, allow_nil: true

  def valid_rating?
    rating.between?(0,5)
  end

end
