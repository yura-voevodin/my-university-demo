# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Pairs
if Pair.where(name: '1 пара').first.nil?
  Pair.create(name: '1 пара', start_time: '8:30')
end

if Pair.where(name: '2 пара').first.nil?
  Pair.create(name: '2 пара', start_time: '10:05')
end

if Pair.where(name: '3 пара').first.nil?
  Pair.create(name: '3 пара', start_time: '11:40')
end

if Pair.where(name: '4 пара').first.nil?
  Pair.create(name: '4 пара', start_time: '14:00')
end

if Pair.where(name: '5 пара').first.nil?
  Pair.create(name: '5 пара', start_time: '15:35')
end

if Pair.where(name: '6 пара').first.nil?
  Pair.create(name: '6 пара', start_time: '17:10')
end

# Classrooms
classrooms_json = File.read("db/classrooms.json")

classrooms = JSON.parse(classrooms_json)

classrooms['classrooms'].each do |classroom_json|
  Classroom.find_or_create_by(name: classroom_json)
end
