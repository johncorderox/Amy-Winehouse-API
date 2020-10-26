class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :group_name

  def group_name
    object.group.name
  end
end
