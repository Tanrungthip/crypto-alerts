User.destroy_all

User.create(email: 'tan@gmail.com', password: 123123)
User.create(email: 'mint@gmail.com', password: 123123)

puts "#{User.count} users created"
