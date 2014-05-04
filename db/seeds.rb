
categs = %w(Parks_&_Rec Hospitality Aerospace Health Office Misc)

categs.each {|categ| Category.create(:name => categ)}

User.create(
  first_name: 'test',
  last_name: 'test',
  user_name: 'test',
  email: 'test@test.com',
  password: "test",
  phone: 'test',
  role: 'youth'
  )

7.times do
  Agency.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number
    )
end

100.times do

	Job.create(
	agency_id: rand(1..7),
	category_id: rand(1..6),
	heading: Faker::Company.catch_phrase,
  description: Faker::Lorem.sentences(10),
  location: Faker::Address.street_address,
  date: Faker::Lorem.word
  )
end


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

150.times do
  Interest.create(
    user_id: rand(1..51),
    job_id: rand(1..100)
    )
end

User.create(
  first_name: "laura",
  last_name: "cossette",
  user_name: "laura",
  email: "me@me.com",
  password: "password",
  role: "agency"
  )

