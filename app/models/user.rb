class User < ApplicationRecord
  has_many :shifts
  has_many :jobs, through: :shifts

  validates :name, presence: true

  def last_shift
    self.shifts.last
  end

  def active_shift?
    last_shift.end_time.nil?
  end
end
