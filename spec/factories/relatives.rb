FactoryBot.define do
  factory :relative do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    contact_number { Faker::Base.numerify('##########') }
    email { Faker::Internet.safe_email }
    relation { 'Brother' }
  end
end
