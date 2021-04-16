class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :date_of_birth
      t.string :date_of_death
      t.text :bio

      t.timestamps
    end
  end
end
