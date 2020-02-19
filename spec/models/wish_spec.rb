require 'rails_helper'

RSpec.describe Wish, type: :model do
  it 'should have a title' do
    wish = build(:wish, title: nil)
    expect(wish.valid?).to eq(false)
  end
end
