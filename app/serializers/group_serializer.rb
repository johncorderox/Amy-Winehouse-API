class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :website, :press_photo

  has_many :artists
end
