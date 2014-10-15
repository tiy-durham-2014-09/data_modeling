class Profile < ActiveRecord::Base
  belongs_to :profileable, polymorphic: true

  validates :description, presence: true
  validates :category, presence: true,
                       inclusion: { in: %w(value growth index),
                       message: "%{value} is not a valid type" }
end
