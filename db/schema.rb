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

ActiveRecord::Schema.define(version: 20141015024123) do

  create_table "bodies", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.string   "features"
    t.integer  "region_id"
    t.integer  "parent_body_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ship_id"
  end

  add_index "bodies", ["region_id"], name: "index_bodies_on_region_id"
  add_index "bodies", ["ship_id"], name: "index_bodies_on_ship_id"

  create_table "crew_members", force: true do |t|
    t.string   "name"
    t.string   "role",       default: "Spaceperson"
    t.string   "species"
    t.string   "gender"
    t.integer  "ship_id"
    t.integer  "captain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crew_members", ["ship_id"], name: "index_crew_members_on_ship_id"

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ships", force: true do |t|
    t.string   "name"
    t.integer  "captain_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ships", ["captain_id"], name: "index_ships_on_captain_id"

  create_table "space_barnacles", force: true do |t|
    t.integer  "count"
    t.integer  "barnable_id"
    t.string   "barnable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "space_barnacles", ["barnable_id", "barnable_type"], name: "index_space_barnacles_on_barnable_id_and_barnable_type"

end
