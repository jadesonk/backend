class Job < ApplicationRecord
  has_many :shifts
  has_many :users

  validates :title, presence: true
end
