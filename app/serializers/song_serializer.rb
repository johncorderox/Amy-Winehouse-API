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
class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :album_name, :group_name

  def album_name
    object.album.name
  end

  def group_name
    object.group.name
  end
end
