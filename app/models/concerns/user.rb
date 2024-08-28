class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true,minimum: 3, maximum: 100, uniqueness: { case_sensitive: false }
  validates :email, presence: true,minimum: 3, maximum: 100, uniqueness: { case_sensitive: false },format: { with: VALID_EMAIL_REGEX }
end