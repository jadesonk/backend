json.extract! @user, :id, :name

json.jobs @user.jobs.uniq do |job|
  json.extract! job, :id, :title
end
