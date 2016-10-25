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

ActiveRecord::Schema.define(version: 20161006072753) do

  create_table "mainpages", force: :cascade do |t|
    t.string   "mathlist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stepones", force: :cascade do |t|
    t.string   "list"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "mainpage_id"
  end

  create_table "stepthrees", force: :cascade do |t|
    t.string   "title"
    t.string   "definition"
    t.string   "example"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "steptwo_id"
  end

  create_table "steptwos", force: :cascade do |t|
    t.string   "list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "stepone_id"
  end

end
