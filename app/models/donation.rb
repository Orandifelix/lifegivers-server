class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donation_center
  belongs_to :donation_type
end
