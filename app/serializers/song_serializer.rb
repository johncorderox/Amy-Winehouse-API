class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :album_name, :group_name

  def album_name
    object.album.name
  end

  def group_name
    object.group.name
  end
end
