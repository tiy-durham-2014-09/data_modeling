class Body < ActiveRecord::Base
  belongs_to :region
  belongs_to :parent_body, class_name: "Body"
  has_many :ships
  has_many :sub_bodies, class_name: "Body", foreign_key: "parent_body_id"
  has_many :space_barnacles, as: :barnable, dependent: :destroy

  validates :name, presence: true
  validates :size, presence: true
end
