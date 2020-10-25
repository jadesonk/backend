class User < ApplicationRecord
  has_many :shifts
  has_many :jobs, through: :shifts

  validates :name, presence: true
end
