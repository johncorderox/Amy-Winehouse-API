class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :release_date
      t.string :date
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
