class CrewMember < ActiveRecord::Base
  belongs_to :ship
  belongs_to :captain, class_name: "CrewMember"
  has_many :subordinates, class_name: "CrewMember", foreign_key: :captain_id
  has_many :space_barnacles, as: :barnable, dependent: destroy
end
