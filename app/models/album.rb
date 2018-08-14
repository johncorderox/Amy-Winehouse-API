class Album < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true, length: {minimum: 1}

end
