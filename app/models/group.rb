class Group < ApplicationRecord
  has_many :artists
  has_many :labels
  has_many :albums
end
