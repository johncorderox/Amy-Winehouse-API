class RecordLabelSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :album
end
