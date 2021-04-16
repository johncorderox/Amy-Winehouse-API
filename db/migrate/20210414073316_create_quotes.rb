class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.text :quote
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
