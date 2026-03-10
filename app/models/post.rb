class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  # is set by default when using belongs_to
  # validates :user, presence: true
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
