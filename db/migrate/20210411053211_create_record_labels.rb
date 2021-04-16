class CreateRecordLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :record_labels do |t|
      t.string :name
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
