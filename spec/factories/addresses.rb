FactoryBot.define do
  factory :address do
    user
    street_address { '42 Newbridge St. New Berlin, WI 53151' }
    country { 'US' }
    state { 'New York' }
    city { 'New Berlin (town)' }
  end
end
