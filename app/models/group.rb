class Group < ApplicationRecord

  validates :name, presence: true, length: {maximum: 1}
end
