class Course < ActiveRecord::Base
  belongs_to :teachable, polymorphic: true
  has_one :professor

  #student must pick two of the four courses listed in the seed data

  validates :title, presence: true

  validates_inclusion_of :requiredbymajor, :in => [true, false]
  #one of these two courses must count towards history major

  validates_inclusion_of :meetsonfriday, :in => [true, false]
  #class must not be held on Friday

  validates :time, presence: true
  #class must not start before 11am

  validates :professor_id, presence: true
  #professor for the course must have a good reputation (that info is included in professor model)

  validates :student_id, presence: true
end

Course.create(title: "Life in Medieval Europe").valid? # => true
Course.create(title: nil).valid? # => false




