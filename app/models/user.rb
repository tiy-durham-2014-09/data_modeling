class User < ActiveRecord::Base
  has_many :portfolios, dependent: :destroy
  has_many :stocks, through: :portfolios

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :birthday, presence: true
  validate :birthday_indicates_minimum_age

  def birthday_indicates_minimum_age
    if birthday > (Date.today - 18.years)
      errors.add(:birthday, "must be 18 years old to have account")
    end
  end
end
