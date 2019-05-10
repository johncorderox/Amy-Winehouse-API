class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :name
      t.string :source
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
