class Company < ActiveRecord::Base
	has_many :managers
	has_many :employees, through: :managers

	validates :name, presence: :true
	validates :business, presence: :true
	validates :location, presence: :true
end
