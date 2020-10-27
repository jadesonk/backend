json.extract! @user, :id, :name

json.job do
  json.id @user.job.id
  json.title @user.job.title
end

unless @user.last_shift.nil?
  json.last_shift do
    json.extract! @user.last_shift, :id, :start_time, :end_time
  end
end
