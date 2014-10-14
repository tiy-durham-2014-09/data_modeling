class Portfolio < ActiveRecord::Base
  belongs_to :user
  belongs_to :stock
  has_one :profile, as: :profileable, dependent: :destroy

  validates :name, presence: true
end
