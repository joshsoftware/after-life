require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has valid first name' do
    user = build(:user, first_name: nil)
    expect(user.valid?).to eq(false)
  end
  it 'has valid last name' do
    user = build(:user, last_name: nil)
    expect(user.valid?).to eq(false)
  end
end
