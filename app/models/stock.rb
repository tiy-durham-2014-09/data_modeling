class Stock < ActiveRecord::Base
  has_many :portfolios
  has_many :users, through: :portfolios
  has_one :profile, as: :profileable, dependent: :destroy

  validates :name, presence: true
  validates :ticker, presence: true,
                     format: { with: /[a-zA-Z\.]/, message: "may only consist of letters or period"},
                     uniqueness: true
  validates :price, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
