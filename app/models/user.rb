class User < ApplicationRecord

  ROLES = ['ADMIN', 'USER']

  has_secure_password
  validates :roles, inclusion: { in: ROLES }
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
end
