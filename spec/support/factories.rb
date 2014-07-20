# spec/support/factories.rb
FactoryGirl.define do

  factory :thing do
    name { Faker::Lorem.words(rand(1..4)).join(" ") }
    description { Faker::Lorem.words(rand(1..25)).join(" ") }
  end

  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email # pulls in from the defined sequence
    password "password"
    password_confirmation "password"
    roles "user"
    name "test"
  end 

  factory :admin, :class => User do |u|
    u.email
    u.password "password"
    u.password_confirmation "password"
    u.roles "admin"
    u.name 'Admin'
  end
    
end
