class CrewMember < ActiveRecord::Base
  belongs_to :ship
  belongs_to :captain, class_name: "CrewMember"
  has_many :subordinates, class_name: "CrewMember", foreign_key: :captain_id
  has_many :space_barnacles, as: :barnable, dependent: :destroy

  validates :name, presence: true
  validates :species, inclusion: { in: ['Human', 'Synthoid', 'Space Elf', 'Phase III Space Barnacle', 'Humpback Whale', 'Sperm Whale', 'Blue Whale'], message: '%{value} is a species not permitted into the Milky Way Department of Space Exploration and Space Barnacle Control' }
  validates :role, inclusion: { in: ['Space Captain', 'Space Barnacle Sanitation Engineer', 'Redshirt', 'Spaceperson'], message: '%{value} is not a REAL space job' }

end

