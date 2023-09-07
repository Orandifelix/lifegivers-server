class User < ApplicationRecord
    has_secure_password
  
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :name, presence: true
    validates :gender, presence: true
  
    validates :age, presence: true, numericality: { only_integer: true, greater_than: 18, less_than: 80 }
    validates :weight, presence: true, numericality: { greater_than: 60 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :contact_number, presence: true, length: { is: 10 }
end
  
  