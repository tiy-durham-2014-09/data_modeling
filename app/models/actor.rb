class Actor < ActiveRecord::Base
  belongs_to :play
  belongs_to :theatre_company
  has_many :scripts, as: :scriptable

  validates :name, presence: true
  validates :age, {presence: true, numericality: true }
  validates :gender, {presence: true, :allow_null => false}
end
