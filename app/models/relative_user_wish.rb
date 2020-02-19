class RelativeUserWish < ApplicationRecord
  validates :user_wish_id, :relative_id, presence: true
end
