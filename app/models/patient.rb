class Patient < ActiveRecord::Base
  belongs_to :transporter

   validates :name, :gender, :location, :destination, :date_of_birth,  presence: true
   validates :gender, inclusion: { in: %w(male female),
    message: "%{value} is not a valid gender. Please specify male or female" }


end
