class Relative < ApplicationRecord
  validates :first_name, :last_name, :email, :contact_number, :relation, :user_id, presence: true
end
