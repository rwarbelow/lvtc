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

ActiveRecord::Schema.define(version: 20131201005037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: true do |t|
    t.string   "title"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "line_3"
    t.date     "expiration_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "champion_series_points", force: true do |t|
    t.integer  "user_id"
    t.integer  "points"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "champion_series_points", ["user_id"], name: "index_champion_series_points_on_user_id", using: :btree

  create_table "club_involvements", force: true do |t|
    t.string   "involvement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "time"
    t.string   "title"
    t.string   "website"
    t.string   "location"
    t.string   "contact_name"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "results_url"
    t.string   "photo_url"
    t.boolean  "front_page"
    t.string   "front_page_photo_url"
    t.integer  "price"
    t.text     "description_1"
    t.text     "description_2"
    t.text     "description_3"
    t.integer  "grand_prix_points"
    t.boolean  "allow_registration"
  end

  add_index "events", ["date"], name: "index_events_on_date", using: :btree
  add_index "events", ["front_page"], name: "index_events_on_front_page", using: :btree

  create_table "grand_prix_points", force: true do |t|
    t.integer  "user_id"
    t.integer  "points"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grand_prix_points", ["user_id"], name: "index_grand_prix_points_on_user_id", using: :btree

  create_table "memberships", force: true do |t|
    t.string   "kind"
    t.integer  "price"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", force: true do |t|
    t.string   "month"
    t.string   "year"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "race_registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "gender"
    t.string   "distance"
    t.string   "tshirt_size"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.boolean  "waiver"
    t.string   "confirmation_code"
  end

  create_table "user_events", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_events", ["user_id"], name: "index_user_events_on_user_id", using: :btree

  create_table "user_involvements", force: true do |t|
    t.integer  "user_id"
    t.integer  "club_involvements_id"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_involvements", ["user_id"], name: "index_user_involvements_on_user_id", using: :btree

  create_table "user_memberships", force: true do |t|
    t.integer  "membership_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "gender"
    t.string   "email_address"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "work_phone"
    t.string   "user_kind"
    t.integer  "user_membership_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthday"
  end

end
