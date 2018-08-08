class Album < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true, length: {maximum: 1}

end
