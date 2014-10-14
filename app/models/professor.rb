class Professor < ActiveRecord::Base
  has_many :students, through: :courses
  has_many :courses, as: :teachable

  validates: :name, presence: true
  validates: :department, presence: true
  validates_inclusion_of: :goodreputation, :in => [true, false]
end

Professor.create(name: "Sir Ulrich von Lichtenstein").valid? # => true
Professor.create(name: nil).valid? # => false
Professor.create(department: "History").valid? # => true
Professor.create(name: nil).valid? # => false