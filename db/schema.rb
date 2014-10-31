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

ActiveRecord::Schema.define(version: 20141031184903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: true do |t|
    t.integer  "score"
    t.boolean  "had_it"
    t.boolean  "want_it"
    t.boolean  "favorite"
    t.integer  "scotch_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scotches", force: true do |t|
    t.string   "name"
    t.string   "distiller"
    t.string   "affiliate_price"
    t.string   "affiliate_name"
    t.string   "affiliate_url"
    t.text     "story"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: true do |t|
    t.string   "nick"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fb_image_url"
    t.string   "fb_location"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "fb_uid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["fb_uid"], name: "index_users_on_fb_uid", using: :btree

end
