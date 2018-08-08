class Song < ApplicationRecord
  belongs_to :album

  validates :name, presence: true, length: {maximum: 1}
  validates :length, presence: true

end
