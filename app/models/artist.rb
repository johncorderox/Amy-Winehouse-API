class Artist < ApplicationRecord
  belongs_to :group

  validates :name, presence: true, length: {minimum: 1}
  validates :position, presence: true, length: {minimum: 2}
  validates :active_member, presence: true, inclusion: { in: [true, false] }

end
