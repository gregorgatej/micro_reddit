class User < ApplicationRecord
  has_many :posts, dependent: :nullify
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { in: 3..12 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..16 }
  validates :age, numericality: { greater_than_or_equal_to: 15, less_than_or_equal_to: 120 }
end
