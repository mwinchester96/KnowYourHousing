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

ActiveRecord::Schema.define(version: 20143560181604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dorm_reviews", force: true do |t|
    t.integer  "score"
    t.integer  "cost"
    t.integer  "location"
    t.integer  "condition"
    t.integer  "nightlife"
    t.integer  "bathrooms_per_hall"
    t.integer  "dorm_id"
    t.integer  "user_id"
    t.string   "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "dorms", force: true do |t|
    t.string   "address"
    t.string   "college"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: true do |t|
    t.string   "address"
    t.integer  "realtor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_reviews", force: true do |t|
    t.integer  "score"
    t.integer  "cost"
    t.integer  "location"
    t.integer  "condition"
    t.integer  "property_id"
    t.integer  "user_id"
    t.string   "comments"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "realtors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "college"
    t.string   "realtor_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "nick"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fb_image_url"
    t.string   "fb_location"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "fb_uid"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "role",             default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["fb_uid"], name: "index_users_on_fb_uid", using: :btree

end
