class Article < ApplicationRecord
  belongs_to :user
  belongs_to :donation_type
end
