json.extract! @user, :id, :name

json.jobs @user.jobs do |job|
  json.extract! job, :id, :title
end
