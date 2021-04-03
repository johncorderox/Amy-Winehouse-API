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
FactoryBot.define do
  factory :label do
    name { "MyString" }
    location { "MyString" }
    group { nil }
  end
end
