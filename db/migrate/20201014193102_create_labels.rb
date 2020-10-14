class CreateLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :labels do |t|
      t.string :name
      t.string :location
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
