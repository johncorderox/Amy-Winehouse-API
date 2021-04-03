# == Schema Information
#
# Table name: quotes
#
#  id         :bigint           not null, primary key
#  name       :text
#  source     :string
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Quote < ApplicationRecord
  belongs_to :artist

  validates :name, :source, presence: true
  validates :name, uniqueness: true
end
