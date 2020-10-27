class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :group_name

  has_many :songs

  def group_name
    object.group.name
  end
end
