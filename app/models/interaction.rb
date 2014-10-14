class Interaction < ActiveRecord::Base

	belongs_to :giver, class_name: Person
	belongs_to :receiver, class_name: Person

	validates :giver_id, presence: true
	validates :receiver_id, presence: true

	validates


end
