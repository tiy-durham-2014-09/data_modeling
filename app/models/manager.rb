class Manager < ActiveRecord::Base
	belongs_to :company
	has_many :employees

	validates :name, presence: :true
	validates :badge_number, presence: :true
	validates :badge_number, numericality: :true
end
