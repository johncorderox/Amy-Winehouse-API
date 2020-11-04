# == Schema Information
#
# Table name: albums
#
#  id           :bigint           not null, primary key
#  name         :string
#  release_date :string
#  group_id     :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :group_name

  has_many :songs

  def group_name
    object.group.name
  end
end
