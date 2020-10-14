# == Schema Information
#
# Table name: groups
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Group < ApplicationRecord
  has_many :artists
  has_many :albums
  has_many :songs
  has_many :labels

  validates :name, presence: true, uniqueness: true
end
