class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :quote, :artist_name
  has_one :artist

  def artist_name
    object.artist.name
  end
end
