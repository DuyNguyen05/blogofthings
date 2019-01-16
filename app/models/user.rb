class User < ApplicationRecord
  before_save {
    self.email = email.downcase
  }
    validates :name , presence: true , length: {minimum: 5}
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

   validates :email, presence: true , uniqueness: true, format:
   {with: VALID_EMAIL_REGEX}

   has_secure_password
  validates :password , length: {minimum: 6 , maximum: 20}, allow_nil: true
end
