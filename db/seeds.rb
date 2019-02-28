# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (1..100).each do |num|
#   task = Task.new(content:"タスク#{num.to_s}",status:"完了")
#   task.save 
# end 


(1..10).each do |user_num|
  user = User.create(name:"user#{user_num}", email:"user#{user_num}@ruby.ruby", password:"1231")
  (1..27).each do |task_num|
    user.tasks.build(content:"タスク#{task_num}", status:"完了")
  end
  user.save
end