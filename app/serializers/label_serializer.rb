# == Schema Information
#
# Table name: labels
#
#  id         :bigint           not null, primary key
#  name       :string
#  location   :string
#  group_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LabelSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :group_name

  def group_name
    object.group.name
  end
end
