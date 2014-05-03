# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categs = %w(Parks_&_Rec Hospitality Aerospace Health Office Misc)

categs.each {|categ| Category.create(:name => categ)}

7.times do
  Agency.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number
    )
end

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end

50.times do 
	Job.create(
	agency_id: rand(1..7),
	category_id: rand(1..6),
	heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraph,
  location: Faker::Address.street_address,
  date: rand_time(rand_time(2.days.ago))#Faker::Lorem.word
  )
end