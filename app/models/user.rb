class User < ApplicationRecord
    has_secure_password
    
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :name, presence: true
    validates :gender, presence: true, inclusion: { in: %w(Male Female) }
    validates :age, presence: true, numericality: { only_integer: true }
    validates :weight, presence: true, numericality: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :contact_number, presence: true, numericality: { only_integer: true }, length: { is: 10 }
end
  