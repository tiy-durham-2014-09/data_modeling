class CreateBookFormats < ActiveRecord::Migration
  def change
    create_table :book_formats do |t|
      t.references :book, index: true, null: false
      t.references :format, index: true, null: false

      t.timestamps
    end
  end
end
