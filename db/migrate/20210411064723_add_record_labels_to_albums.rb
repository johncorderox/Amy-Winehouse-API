class AddRecordLabelsToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_reference :albums, :record_label, foreign_key: true
  end
end
