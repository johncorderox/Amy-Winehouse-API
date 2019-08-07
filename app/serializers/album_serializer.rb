class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :album_cover, :release_date, :groups

  def groups
    {
      group_name: self.object.group.name,
      website: self.object.group.website,
      press_photo: self.object.group.press_photo,
    }
  end

end
