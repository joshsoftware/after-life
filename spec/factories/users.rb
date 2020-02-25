FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    contact_number { Faker::Base.numerify('##########') }
    date_of_birth { Faker::Date.birthday }
    password { Faker::String.random(7) }
    password_confirmation { password }
    confirmed_at { Date.today }
    email { Faker::Internet.safe_email }
  end
end
