class Script < ActiveRecord::Base
  belongs_to :scriptable, polymorphic: true

  validates :text, presence: true, :length => {minimum: 10}
end
