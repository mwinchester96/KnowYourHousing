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

ActiveRecord::Schema.define(version: 20141029181604) do

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "user_id"
    t.integer  "scotch_id"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["scotch_id"], name: "index_reviews_on_scotch_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string   "nick"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fb_image_url"
    t.string   "fb_location"
    t.integer  "fb_uid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["fb_uid"], name: "index_users_on_fb_uid"

end
