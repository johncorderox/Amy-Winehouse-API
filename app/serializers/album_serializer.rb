# == Schema Information
#
# Table name: albums
#
#  id              :bigint           not null, primary key
#  name            :string
#  release_date    :string
#  artist_id       :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  record_label_id :bigint
#
class AlbumSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :release_date, :album_cover, :artist_name

  has_one :record_label

  def album_cover
    rails_blob_path(object.album_cover, only_path: true) if object.album_cover.attached?
  end

  def artist_name
    object.artist.name
  end
end
