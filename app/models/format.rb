class Format < ActiveRecord::Base
  validates :name, presence: true
  has_many :books, through: :book_formats
end
