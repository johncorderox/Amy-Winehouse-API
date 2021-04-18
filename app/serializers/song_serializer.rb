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
class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :album_name, :artist_name

  belongs_to :album

  def artist_name
    object.artist.name
  end

  def album_name
    object.album.name
  end
end
