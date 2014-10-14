class Student < ActiveRecord::Base
  has_many :courses, as: :teachable
  has_many :professors, through: :courses

  validates :name, presence: true
  validates :major, presence: true
end

Student.create(name: "Seamus Finnegan").valid? # => true
Student.create(name: nil).valid? # => false
