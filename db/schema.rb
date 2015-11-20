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

ActiveRecord::Schema.define(version: 20141130181604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "realtors", force: true do |t|
    t.string   "name",               limit: 255
    t.string   "address",            limit: 255
    t.string   "realtor_url",        limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "college"
  end

  create_table "reviews", force: true do |t|
    t.integer  "score"
    t.integer  "affordability"
    t.integer  "helpfulness"
    t.integer  "accomodation"
    t.integer  "realtor_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "comments"
  end

  create_table "users", force: true do |t|
    t.string   "nick",             limit: 255
    t.string   "email",            limit: 255
    t.string   "first_name",       limit: 255
    t.string   "last_name",        limit: 255
    t.string   "fb_image_url",     limit: 255
    t.string   "fb_location",      limit: 255
    t.string   "oauth_token",      limit: 255
    t.datetime "oauth_expires_at"
    t.string   "fb_uid",           limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "role",                         default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["fb_uid"], name: "index_users_on_fb_uid", using: :btree

end
