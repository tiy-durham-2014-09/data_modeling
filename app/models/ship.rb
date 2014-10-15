class Ship < ActiveRecord::Base
  belongs_to :captain
  belongs_to :body
  has_many :crew_members, dependent: :destroy
  has_many :space_barnacles, as: :barnable, dependent: :destroy

end
