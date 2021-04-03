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
class Label < ApplicationRecord
  belongs_to :group

  validates :name, :location, presence: true
  validates :name, uniqueness: true
end
