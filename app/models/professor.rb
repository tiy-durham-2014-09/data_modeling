class Professor < ActiveRecord::Base
  validates: :name, presence: true
  validates: :department, presence: true
  validates_inclusion_of: :goodreputation, :in => [true, false]
end
