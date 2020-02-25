require 'rails_helper'

RSpec.describe Address, type: :model do
  before(:all) do
    @user  = create(:user)
  end
  it 'should be associated with a user' do
    address = build(:address, user_id: nil)
    expect(address.valid?).to eq(false)
  end
  it 'should have a street address' do
    address = build(:address, user_id: @user.id, street_address: nil)
    expect(address.valid?).to eq(false)
  end
  it 'should have a country' do
    address = build(:address, user_id: @user.id, country: nil)
    expect(address.valid?).to eq(false)
  end
  it 'should have a state' do
    address = build(:address, user_id: @user.id, state: nil)
    expect(address.valid?).to eq(false)
  end
  it 'should have a city' do
    address = build(:address, user_id: @user.id, city: nil)
    expect(address.valid?).to eq(false)
  end
end
