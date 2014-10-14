class Person < ActiveRecord::Base

	has_many :interactions, foreign_key: :giver_id
	has_many :interactions, foreign_key: :receiver_id

	has_many :receivers, through: :interactions
	has_many :givers, through: :interactions

	has_many :gifts

	validates :name, presence: true
	before_save :set_giver_id


	def set_giver_id

	end

	def age

	end

	def give!

	end

	def receive!

	end



end
