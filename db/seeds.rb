# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Religion.create(name:"Islam")
Religion.create(name:"Christian")
Religion.create(name:"Judaism")
Religion.create(name:"Hinduism")
Religion.create(name:"Atheism")
Religion.create(name:"Zorastrianism")
Religion.create(name:"Shintoism")
Religion.create(name:"Budhissm")
Religion.create(name:"Taoism")

puts "Done with religion"
puts "starting Topic"
20.times do
Religion.all.each do |religion|
    Category.create(name:Faker::Lorem.sentence,religion:religion)
end
end

Category.all.each do |category|
    Topic.create(name:Faker::Lorem.sentence,category:category)
end

Topic.all.each do |topic|
    Article.create(content:Faker::Lorem.paragraph(sentence_count: 20),topic:topic)
end
User.create(name:"GrassrootsDawah",password:"Dawah4ever")