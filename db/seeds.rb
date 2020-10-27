puts "START SEED"

Shift.destroy_all
User.destroy_all
Job.destroy_all

puts "Create job titled Barista"
job = Job.create(title: "Barista")

puts "Create user name John"
user = User.new(name: "John")
user.job = job
user.save

puts "END SEED"
