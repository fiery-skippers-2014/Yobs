# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categs = %w(parks_rec hospitality aerospace health office misc)

categs.each {|categ| Category.create(:name => categ)}

7.times do
  Agency.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number
    )
end

50.times do 
	Job.create(
	agency_id: rand(1..7),
	category_id: rand(1..6),
	heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraph,
  location: Faker::Address.street_address,
  date: Faker::Lorem.word
  )
end