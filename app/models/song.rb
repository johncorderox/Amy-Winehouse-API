# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :string
#  length     :float
#  album_id   :bigint           not null
#  group_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Song < ApplicationRecord
  belongs_to :album
  belongs_to :group

  validates :name, :length, presence: true
  validates :name, uniqueness: true
end
