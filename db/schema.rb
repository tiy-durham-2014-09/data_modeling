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

ActiveRecord::Schema.define(version: 20141015041141) do

  create_table "portfolios", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id"

  create_table "profiles", force: true do |t|
    t.string   "description"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profileable_id"
    t.string   "profileable_type"
  end

  create_table "stocks", force: true do |t|
    t.string   "name"
    t.string   "ticker"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.integer  "portfolio_id"
  end

  add_index "stocks", ["portfolio_id"], name: "index_stocks_on_portfolio_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthday"
  end

end
