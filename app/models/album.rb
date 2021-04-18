# == Schema Information
#
# Table name: albums
#
#  id              :bigint           not null, primary key
#  name            :string
#  release_date    :string
#  artist_id       :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  record_label_id :bigint
#
class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs
  has_one :record_label

  has_one_attached :album_cover
end
