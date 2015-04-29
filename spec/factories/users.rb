FactoryGirl.define do
  factory :user do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'
    role 'user'
  end

  trait :admin do
    role 'admin'
  end
end
