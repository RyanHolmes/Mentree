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

ActiveRecord::Schema.define(version: 20151126002832) do

  create_table "map_nodes", force: :cascade do |t|
    t.integer  "degree",     limit: 4
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.integer  "rating",     limit: 4
    t.string   "audio_path", limit: 255
    t.string   "path",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "ancestry",   limit: 255
  end

  add_index "map_nodes", ["ancestry"], name: "index_map_nodes_on_ancestry", using: :btree

end
