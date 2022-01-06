# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.new(email: 'admin@example.com', password: 'aaaaaaaa', name: 'Admin', admin: true) do |user|
  user.save!(validate: false)
end
User.create!(email: 'user1@example.com', password: 'aaaaaaaa', name: 'User1') do |user|
  user.save!(validate: false)
end

cat = Category.create(name: 'Category')
Task.create(category: cat, title: 'Test', content: 'Test Contents')

