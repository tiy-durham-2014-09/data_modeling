# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141013195425) do

  create_table "authors", force: true do |t|
    t.string   "name",          null: false
    t.date     "deceased_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_authors", force: true do |t|
    t.integer  "book_id",    null: false
    t.integer  "author_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_authors", ["author_id"], name: "index_book_authors_on_author_id"
  add_index "book_authors", ["book_id"], name: "index_book_authors_on_book_id"

  create_table "book_formats", force: true do |t|
    t.integer  "book_id",    null: false
    t.integer  "format_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_formats", ["book_id"], name: "index_book_formats_on_book_id"
  add_index "book_formats", ["format_id"], name: "index_book_formats_on_format_id"

  create_table "books", force: true do |t|
    t.string   "title",            null: false
    t.string   "isbn"
    t.date     "publication_date", null: false
    t.integer  "publisher_id"
    t.integer  "prev_edition_id"
    t.integer  "next_edition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["publisher_id"], name: "index_books_on_publisher_id"

  create_table "formats", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", force: true do |t|
    t.string   "name",       null: false
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
