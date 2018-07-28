class ChangeLengthToBeFloatInSongs < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :length, :float
  end
end
