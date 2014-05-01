FactoryGirl.define do

  factory :agency do
    name {"Bob's Jobs"}
    address {"1234 Main Street"}
  end

  factory :agency, class: User do
    username { "sampleagency" }
    email { "sample@sample.com" }
    password { "123456" }
    agency true
    admin false
  end

  factory :session do
    id { }
  end


end