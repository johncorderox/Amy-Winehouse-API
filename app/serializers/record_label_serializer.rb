# == Schema Information
#
# Table name: record_labels
#
#  id         :bigint           not null, primary key
#  name       :string
#  album_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RecordLabelSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :album
end
