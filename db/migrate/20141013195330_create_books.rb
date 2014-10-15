class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn
      t.date :publication_date, null: false
      t.references :publisher, index: true
      t.references :prev_edition, null: true
      t.references :next_edition, null: true

      t.timestamps
    end
  end
end
