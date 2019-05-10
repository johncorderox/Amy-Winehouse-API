class CreateLyrics < ActiveRecord::Migration[5.2]
  def change
    create_table :lyrics do |t|
      t.text :lyric
      t.references :song, foreign_key: true
      t.references :album, foreign_key: true
      t.references :groups, foreign_key: true

      t.timestamps
    end
  end
end
