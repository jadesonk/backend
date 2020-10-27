class User < ApplicationRecord
  has_many :shifts
  belongs_to :job

  validates :name, presence: true

  def last_shift
    self.shifts.last
  end

  def active_shift?
    last_shift.end_time.nil?
  end
end
