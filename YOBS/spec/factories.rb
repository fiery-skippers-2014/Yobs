FactoryGirl.define do
 
 
   # factory :agency do
 
 
 
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
 
 end