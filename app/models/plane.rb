class Plane < ActiveRecord::Base
  belong_to :airline
  has_many :passengers
  has_many :seats

  validates :manufacturer, presence: :true
  validates :model_id, presence: :true, numrericality: :true
  validates :manufacturer, inclusion: {in: ['Boeing',
                                'Airbus'],
                                message: "%{value} is not a manufacturer"}
end
