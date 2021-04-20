# == Schema Information
#
# Table name: quotes
#
#  id         :bigint           not null, primary key
#  quote      :text
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :quote, :artist_name
  has_one :artist

  def artist_name
    object.artist.name
  end
end
