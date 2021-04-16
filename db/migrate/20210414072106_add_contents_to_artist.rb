class AddContentsToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :cause_of_death, :string
    add_column :artists, :education, :string
    add_column :artists, :website, :string
  end
end
