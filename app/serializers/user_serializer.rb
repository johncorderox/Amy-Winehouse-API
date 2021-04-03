# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
end
