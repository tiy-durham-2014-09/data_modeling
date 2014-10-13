class CrewMember < ActiveRecord::Base
  belongs_to :ship
  belongs_to :captain
  has_many :space_barnacles, as: :barnable, dependent: destroy
end
