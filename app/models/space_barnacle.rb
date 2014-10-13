class SpaceBarnacle < ActiveRecord::Base
  belongs_to :barnable, polymorphic: true
end
