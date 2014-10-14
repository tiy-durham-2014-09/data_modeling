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

ActiveRecord::Schema.define(version: 20141014020752) do

  create_table "actors", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "play_id"
    t.integer  "theatre_company_id"
  end

  add_index "actors", ["play_id"], name: "index_actors_on_play_id"
  add_index "actors", ["theatre_company_id"], name: "index_actors_on_theatre_company_id"

  create_table "plays", force: true do |t|
    t.string   "title"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "theatre_company_id"
    t.integer  "writer_id"
  end

  add_index "plays", ["theatre_company_id"], name: "index_plays_on_theatre_company_id"
  add_index "plays", ["writer_id"], name: "index_plays_on_writer_id"

  create_table "scripts", force: true do |t|
    t.text     "text"
    t.integer  "scriptable_id"
    t.string   "scriptable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scripts", ["scriptable_id", "scriptable_type"], name: "index_scripts_on_scriptable_id_and_scriptable_type"

  create_table "theatre_companies", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
