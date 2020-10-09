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
require "rails_helper"

RSpec.describe Artist, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
