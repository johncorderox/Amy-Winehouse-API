# == Schema Information
#
# Table name: albums
#
#  id           :bigint           not null, primary key
#  name         :string
#  release_date :string
#  group_id     :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "rails_helper"

RSpec.describe Album, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
