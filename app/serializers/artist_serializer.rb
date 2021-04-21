# == Schema Information
#
# Table name: artists
#
#  id             :bigint           not null, primary key
#  name           :string
#  date_of_birth  :string
#  date_of_death  :string
#  bio            :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  cause_of_death :string
#  education      :string
#  website        :string
#
class ArtistSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :date_of_birth, :date_of_death, :bio, :cause_of_death, :education, :website, :press_photo, :signature, :logo

  has_many :quotes
  has_many :albums
  has_many :songs, through: :albums

  def press_photo
    rails_blob_path(object.press_photo, only_path: true) if object.press_photo.attached?
  end

  def signature
    rails_blob_path(object.signature, only_path: true) if object.signature.attached?
  end

  def logo
    rails_blob_path(object.logo, only_path: true) if object.logo.attached?
  end
end
