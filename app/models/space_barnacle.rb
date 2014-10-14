class SpaceBarnacle < ActiveRecord::Base
  belongs_to :barnable, polymorphic: true

  validates :count, numericality: { greater_than: 0 }
end
