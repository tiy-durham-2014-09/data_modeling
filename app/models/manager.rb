class Manager < ActiveRecord::Base
	belongs_to :ceo, class_name: "Manager"
	belongs_to :company
	has_many :employees

	validates :name, presence: true
	validates :badge_number, presence: true#, ploymorphic: true #brings up error in consolemanager
	validates :badge_number, numericality: true
end
