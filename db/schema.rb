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

ActiveRecord::Schema.define(version: 20150823053022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flats", force: :cascade do |t|
    t.string   "bulding_no"
    t.string   "building_street_name"
    t.string   "building_district_name"
    t.string   "building_type"
    t.boolean  "building_have_elevator?"
    t.string   "property_floor"
    t.integer  "property_no_rooms"
    t.integer  "property_no_bathrooms"
    t.boolean  "property_can_smoke?"
    t.boolean  "property_have_wifi?"
    t.boolean  "property_allow_pets?"
    t.integer  "room_rent_amount"
    t.datetime "room_date_available"
    t.string   "room_preference"
    t.integer  "room_no_beds"
    t.string   "room_type_bed"
    t.boolean  "room_is_furnished?"
    t.string   "room_bathroom"
    t.text     "room_description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
  end

  add_index "flats", ["user_id"], name: "index_flats_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.binary   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "flat_id"
  end

  add_index "photos", ["flat_id"], name: "index_photos_on_flat_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "age"
    t.string   "occupation"
    t.string   "gender"
    t.boolean  "is_smoker?"
    t.boolean  "have_kids?"
    t.boolean  "have_pet?"
    t.text     "decription"
    t.binary   "profile_picture"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "flats", "users"
  add_foreign_key "photos", "flats"
end
