# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :string
#  length     :float
#  album_id   :bigint           not null
#  group_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Song, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
