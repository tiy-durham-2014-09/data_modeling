class Course < ActiveRecord::Base
  belongs_to :teachable, polymorphic: true
  has_one :professor

  validates: :title, presence: true
  validates_inclusion_of: :requiredbymajor, :in => [true, false]
  validates_inclusion_of: :meetsonfriday, :in => [true, false]
  validates: :time, presence: true
  validates: :professor_id, presence: true
  validates: :student_id, presence: true
end

Course.create(title: "Life in Medieval Europe").valid? # => true
Course.create(name: nil).valid? # => false