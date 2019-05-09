class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :bio
      t.string :website
      t.string :press_photo

      t.timestamps
    end
  end
end
