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

ActiveRecord::Schema.define(version: 20150910171102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hits", force: :cascade do |t|
    t.string   "ip_address"
    t.string   "referrer"
    t.integer  "url_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
    t.string   "zipcode"
    t.string   "country"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urls", force: :cascade do |t|
    t.string   "url"
    t.string   "shortened_path"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "hits_count",     default: 0
  end

  add_index "urls", ["shortened_path"], name: "index_urls_on_shortened_path", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "avatar"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "username"
    t.string   "password_digest"
    t.integer  "urls_count",      default: 0
  end

end
