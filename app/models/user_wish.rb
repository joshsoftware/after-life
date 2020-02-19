class UserWish < ApplicationRecord
  validates :description, :frequency, :user_id, :wish_id, :when_to, presence: true
end
