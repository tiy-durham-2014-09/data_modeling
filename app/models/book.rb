class Book < ActiveRecord::Base
  belongs_to :publisher
  validates :title, presence: true
 # validates_format_of :isbn, :with => /\A(97(8|9))?\d{9}(\d|X)\z/, :on => :create
  has_many :authors, through: :book_authors
  has_many :formats, through: :book_formats
  has_one  :prev_edition, class_name: "Book",
           foreign_key: "book_id"
  has_one :next_edition, class_name: "Book",
           foreign_key: "book_id"
end
