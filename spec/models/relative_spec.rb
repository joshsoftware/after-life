require 'rails_helper'

RSpec.describe Relative, type: :model do
  before(:all) do
    @user  = create(:user)
  end
  it 'has first name' do
    relative = build(:relative, user_id: @user.id, first_name: nil)
    expect(relative.valid?).to eq(false)
  end
  it 'has last name' do
    relative = build(:relative, user_id: @user.id, last_name: nil)
    expect(relative.valid?).to eq(false)
  end
  it 'has contact number' do
    relative = build(:relative, user_id: @user.id, contact_number: nil)
    expect(relative.valid?).to eq(false)
  end
  it 'has email id' do
    relative = build(:relative, user_id: @user.id, email: nil)
    expect(relative.valid?).to eq(false)
  end
  it 'should be related to user' do
    relative = build(:relative, user_id: @user.id, user_id: nil)
    expect(relative.valid?).to eq(false)
  end
  it 'has relation' do
    relative = build(:relative, user_id: @user.id, relation: nil)
    expect(relative.valid?).to eq(false)
  end
end
