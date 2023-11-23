class Video < ApplicationRecord
  belongs_to :cam
  has_one_attached :video
  attr_accessor :video
end
