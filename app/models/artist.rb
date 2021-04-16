class Artist < ApplicationRecord
  has_many :albums
  has_many :quotes
  has_many :songs, through: :albums

  has_one_attached :press_photo
  has_one_attached :signature
end
