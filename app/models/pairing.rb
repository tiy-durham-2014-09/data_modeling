class Pairing < ActiveRecord::Base
  belongs_to :beer_style
  belongs_to :cheese_style


  pair("amber ale", "mozzarella")

end
