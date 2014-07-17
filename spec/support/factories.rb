# spec/support/factories.rb
FactoryGirl.define do

  factory :thing do
    name "test thing"
    desciption "test thing "
  end

  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email # pulls in from the defined sequence
    password "password"
    password_confirmation "password"
    roles "admin"
    name "test"
  end 

    
end
