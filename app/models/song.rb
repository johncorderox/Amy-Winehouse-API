# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :string
#  length     :float
#  album_id   :bigint           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
end
