class Transporter < ActiveRecord::Base
  has_many :patients
  has_one :dispatcher

   validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }
end
