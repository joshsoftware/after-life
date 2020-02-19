require 'rails_helper'

RSpec.describe RelativeUserWish, type: :model do
  before(:all) do
    @user  = create(:user)
    @wish  = create(:wish)
    @relative = create(:relative, user_id: @user.id)
    @user_wish = create(:user_wish, wish_id: @wish.id, user_id: @user.id)
  end
  it 'should have a user-wish' do
    relative_user_wish = build(:relative_user_wish, relative_id: @relative.id, user_wish_id: nil, wish_id: @wish.id)
  end

end
