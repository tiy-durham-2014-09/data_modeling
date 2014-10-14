class Play < ActiveRecord::Base
  belongs_to :theatre_company
  belongs_to :writer, class_name: "Theatre Company"
  has_many :actors

  validates :title, presence: true
  validates :genre, inclusion: {in: ["Drama",
                                     "Comedy",
                                     "Dramedy",
                                     "Musical"],
                                message: "%{value} is not a valid play genre."}


end
