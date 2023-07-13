# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
username = Faker::Internet.username
email = Faker::Internet.email
password = 'password'
user = User.create!(username:, email:, password:, password_confirmation: password)

99.times do |_n|
  name = Faker::Food.spice
  description = Faker::Food.description.slice(0, 75)
  category = ['Hotsauce', 'Dry Rub', 'Salsa', 'BBQ Sauce', 'Other'].sample
  Hotsauce.create!(name:, description:, category:, user:)
end
