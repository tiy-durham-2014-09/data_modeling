class CreateBookAuthors < ActiveRecord::Migration
  def change
    create_table :book_authors do |t|
      t.references :book, index: true, null: false
      t.references :author, index: true, null: false

      t.timestamps
    end
  end
end
