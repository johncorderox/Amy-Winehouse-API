# == Schema Information
#
# Table name: artists
#
#  id            :bigint           not null, primary key
#  name          :string
#  position      :string
#  active_member :boolean
#  group_id      :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Artist < ApplicationRecord
  belongs_to :group
  has_many :songs

  validates :name, presence: true, uniqueness: true
  validates :position, presence: true
end
