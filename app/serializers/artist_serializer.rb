class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :active_member, :group_name

  def group_name
    object.group.name
  end
end
