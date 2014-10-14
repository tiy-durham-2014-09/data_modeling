class Pairing < ActiveRecord::Base
  belongs_to :beer_style
  belongs_to :cheese_style

  def is(title)
    self.where(title: title).id
  end

end
