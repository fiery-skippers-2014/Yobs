FactoryGirl.define do
    factory :agencyuser, class: User do
    username { "sampleagency" }
    email { "sample@sample.com" }
    password { "123456" }
    agency true
    admin false
    agency
  end

  factory :session do
    id { }
  end

  factory :user do
    user_name {Faker::Internet.user_name}
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    email {Faker::Internet.email}
    password {Faker::Internet.password}
  end

  factory :category do
    name {Faker::Name.first_name}
  end

<<<<<<< HEAD
  factory :agency do
    name {Faker::Company.name}
    address {Faker::Address.street_address}
    phone_number {Faker::PhoneNumber.phone_number }
  end


  factory :job do
    # agency_id {8}
    # category_id {3} 
=======
  factory :job do
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
    heading {Faker::Company.catch_phrase}
    description {Faker::Lorem.paragraph}
    location {Faker::Address.street_address}
    date {Faker::Lorem.word}
    agency
    category
  end

 end