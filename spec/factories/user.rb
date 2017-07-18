FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    password_hash { Faker::Internet.password }
  end
end
