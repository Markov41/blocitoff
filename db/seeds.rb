require 'faker'
 
 15.times do
  Item.create!(
   
   name: Faker::Lovecraft.sentence,
   created_at: Faker::Date.backward(5)
   )
 end
 item = Item.all
 
  10.times do
  User.create!(
   
   email: Faker::Internet.email,
   password: Faker::Internet.password
   )
 end
 user = User.all
 
 
 
 puts "Faker Seeds Finished"
 puts "#{Item.count} items created with Faker"
 puts "#{User.count} users created with Faker"