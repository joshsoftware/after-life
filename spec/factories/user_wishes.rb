FactoryBot.define do
  factory :user_wish do
    user
    wish
    description { 'Plant 10 trees every month' }
    frequency { 'Monthly' }
    when_to { '30' }
  end
end
