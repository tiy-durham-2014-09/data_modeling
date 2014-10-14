class Dispatcher < ActiveRecord::Base
  belongs_to :transporters
  has_many :patients, through: :transporters


has_many :subordinates, class_name: "Dispatcher",
                          foreign_key: "supervisor_id"

  belongs_to :manager, class_name: "Dispatcher"


   validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }
end
