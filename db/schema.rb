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

ActiveRecord::Schema.define(version: 20141014035729) do

  create_table "beer_styles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheese_styles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pairings", force: true do |t|
    t.integer  "beer_style_id"
    t.integer  "cheese_style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pairings", ["beer_style_id"], name: "index_pairings_on_beer_style_id"
  add_index "pairings", ["cheese_style_id"], name: "index_pairings_on_cheese_style_id"

end
