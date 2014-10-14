class Profit < ActiveRecord::Base
  belongs_to :winning, polymorphic: true
end
