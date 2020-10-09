# == Schema Information
#
# Table name: albums
#
#  id           :bigint           not null, primary key
#  name         :string
#  release_date :string
#  date         :string
#  group_id     :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Album < ApplicationRecord
  belongs_to :group
end
