require 'rails_helper'

RSpec.describe UserWish, type: :model do
  before(:all) do
    @user  = create(:user)
    @wish  = create(:wish)
  end
  it 'should have description' do
    user_wish = build(:user_wish, user_id: @user.id, wish_id: @wish.id, description: nil)
    expect(user_wish.valid?).to eq(false)
  end
  it 'should be of a user' do
    user_wish = build(:user_wish, wish_id: @wish.id, user_id: nil)
    expect(user_wish.valid?).to eq(false)
  end
  it 'should have a wish' do
    user_wish = build(:user_wish, user_id: @user.id, wish_id: nil)
    expect(user_wish.valid?).to eq(false)
  end
  it 'should have a frequency' do
    user_wish = build(:user_wish, user_id: @user.id, wish_id: @wish.id, frequency: nil)
    expect(user_wish.valid?).to eq(false)
  end
  it 'should have a when_to' do
    user_wish = build(:user_wish, user_id: @user.id, wish_id: @wish.id, when_to: nil)
    expect(user_wish.valid?).to eq(false)
  end
end
