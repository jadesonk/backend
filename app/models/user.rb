class User < ApplicationRecord
  has_many :shifts
  belongs_to :job

  validates :name, presence: true

  def last_shift
    shifts.last
  end

  def active_shift?
    if last_shift.nil?
      false
    else
      last_shift.end_time.nil?
    end
  end
end
