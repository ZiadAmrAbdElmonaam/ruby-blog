class User < ApplicationRecord
  has_many :articles

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Validation for username
  validates :username,
            presence: true,
            length: { minimum: 3, maximum: 100 },
            uniqueness: { case_sensitive: false }

  # Validation for email
  validates :email,
            presence: true,
            length: { minimum: 3, maximum: 100 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end