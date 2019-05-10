class Lyric < ApplicationRecord
  belongs_to :song
  belongs_to :album
  belongs_to :groups
end
