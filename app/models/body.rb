class Body < ActiveRecord::Base
  belongs_to :region
  belongs_to :ship
  belongs_to :parent_body, class_name: "Body"
  has_many :sub_bodies, class_name: "Body", foreign_key: "parent_body_id"
  has_many :space_barnacles, as: :barnable, dependent: destroy
end
