class Student < ActiveRecord::Base
  has_many :courses, as: :teachable
  has_many :professors, through: :courses

  validates: :name, presence: true
  validates: :major, presence: true
end
