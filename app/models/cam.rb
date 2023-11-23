class Cam < ApplicationRecord
  has_secure_password
  has_many :videos

  attr_accessor :videos
  validates :identifier, presence: true, uniqueness: true
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
end
