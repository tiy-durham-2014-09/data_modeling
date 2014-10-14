class Ship < ActiveRecord::Base
  has_one :body
  belongs_to :captain
  has_many :crew_members, dependent: :destroy
  has_many :space_barnacles, as: :barnable, dependent: :destroy

end
