class Student < ActiveRecord::Base
  validates: :name, presence: true
  validates: :major, presence: true
end
