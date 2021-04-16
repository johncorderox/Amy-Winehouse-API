class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs
  has_one :record_label

  has_one_attached :album_cover
end
