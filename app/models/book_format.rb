class BookFormat < ActiveRecord::Base
  belongs_to :book
  belongs_to :format
  validates :book, presence: true
  validates :format, presence: true
end
