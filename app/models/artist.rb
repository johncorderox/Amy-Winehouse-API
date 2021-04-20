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
class Artist < ApplicationRecord
  has_many :albums
  has_many :quotes
  has_many :songs, through: :albums

  has_one_attached :press_photo
  has_one_attached :signature
  has_one_attached :logo
end
