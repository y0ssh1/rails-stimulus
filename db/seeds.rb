# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = Array.new(10) do |i|
  User.create(name: "Author_#{i}")
end

100.times do |i|
  Review.create(
    user_id: users[rand(10)].id,
    image_url: 'https://placehold.jp/350x350.png',
    content: "test_#{i}"
  )
end
