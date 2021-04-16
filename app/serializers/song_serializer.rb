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
