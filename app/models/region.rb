class Region < ActiveRecord::Base
  has_many :bodies

  validates :name, presence: true
end
