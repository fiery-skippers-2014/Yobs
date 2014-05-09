# Create six categories w/ specific names:

categs = ["Youth Programs", "Government", "Arts & Media", "Retail", "Office", "Science & Tech"]

categs.each {|categ| Category.create(:name => categ)}

# Create 7 agencies w/ specific names

agencies = ["YouthWorks", "Mayor's Youth Employment", "Old Skool Cafe", "Exploratorium", "Juma Ventures", "Office"]

agencies.each do |agency|
  Agency.create(
    name: agency,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number
    )
end

# Create 10-20 jobs per category

dates = ["Summer 2014", "Fall 2014", "Spring 2015", "5/20/14", "6/1/14", "6/15/14", "7/4/14", "7/25/14", "8/1/14", "9/7/14", "9/23/14"]

rand(10..18).times do
  Job.create(
  agency_id: rand(1..7),
  category_id: 1,
  heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: dates.sample
  )
end

rand(10..18).times do
  Job.create(
  agency_id: rand(1..7),
  category_id: 2,
  heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: dates.sample
  )
end

rand(10..18).times do
  Job.create(
  agency_id: rand(1..7),
  category_id: 3,
  heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: dates.sample
  )
end

rand(10..18).times do
  Job.create(
  agency_id: rand(1..7),
  category_id: 4,
  heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: dates.sample
  )
end

rand(10..18).times do
  Job.create(
  agency_id: rand(1..7),
  category_id: 5,
  heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: dates.sample
  )
end

rand(10..18).times do
  Job.create(
  agency_id: rand(1..7),
  category_id: 6,
  heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: dates.sample
  )
end

# Create 100 users

100.times do
  User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  user_name: Faker::Lorem.word,
  email: Faker::Internet.email,
  password: "password1",
  phone: Faker::PhoneNumber.phone_number,
  role: 'youth'
  )
end

# Create 150 interests

150.times do
  Interest.create(
    user_id: rand(1..51),
    job_id: rand(1..100)
    )
end

# Create an agency user

User.create(
  first_name: "Laura",
  last_name: "Cossette",
  user_name: "agency1_admin",
  email: "laura@agency1.com",
  password: "password",
  role: "agency"
  )

# Create an account

Account.create(
  user_id: User.find_by_email('laura@agency1.com').id,
  agency_id: 1
)
# categs = %w(Parks_&_Rec Hospitality Aerospace Health Office Misc)

# categs.each {|categ| Category.create(:name => categ)}

# 7.times do
#   Agency.create(
#     name: Faker::Company.name,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.phone_number
#     )
# end

# 100.times do

# 	Job.create(
# 	agency_id: rand(1..7),
# 	category_id: rand(1..6),
# 	heading: Faker::Company.catch_phrase,
#   description: Faker::Lorem.sentences(10),
#   location: Faker::Address.street_address,
#   date: Faker::Lorem.word
#   )
# end


# 100.times do
#   User.create(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   user_name: Faker::Lorem.word,
#   email: Faker::Internet.email,
#   password: "password1",
#   phone: Faker::PhoneNumber.phone_number,
#   role: 'youth'
#   )
# end

# 150.times do
#   Interest.create(
#     user_id: rand(1..51),
#     job_id: rand(1..100)
#     )
# end

# User.create(
#   first_name: "laura",
#   last_name: "cossette",
#   user_name: "laura",
#   email: "me@me.com",
#   password: "password",
#   role: "agency"
#   )

# Account.create(
#   user_id: User.find_by_email('me@me.com').id,
#   agency_id: 1
# )

