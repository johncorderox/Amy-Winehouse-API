class Group < ApplicationRecord
  validates :name, presence: true, uniquness: true
  validates :bio, length: {min: 1}
end
