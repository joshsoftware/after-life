class Address < ApplicationRecord
  validates :user_id, :street_address, :country, :state, :city, presence: true
end
