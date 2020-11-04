# == Schema Information
#
# Table name: artists
#
#  id            :bigint           not null, primary key
#  name          :string
#  position      :string
#  active_member :boolean
#  group_id      :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :active_member, :group_name

  def group_name
    object.group.name
  end
end
