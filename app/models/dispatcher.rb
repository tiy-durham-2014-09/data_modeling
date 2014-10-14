class Dispatcher < ActiveRecord::Base
  belongs_to :transporters
  has_many :patients, through: :transporters

   validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }


end
