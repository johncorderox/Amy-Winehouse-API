class ArtistSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :date_of_birth, :date_of_death, :bio, :cause_of_death, :education, :website, :press_photo, :signature

  has_many :quotes
  has_many :albums
  has_many :songs, through: :albums

  def press_photo
    rails_blob_path(object.press_photo, only_path: true) if object.press_photo.attached?
  end

  def signature
    rails_blob_path(object.signature, only_path: true) if object.signature.attached?
  end
end
