class Gift < ActiveRecord::Base

	belongs_to :Person, through :interaction



	def archive!

	end

end
