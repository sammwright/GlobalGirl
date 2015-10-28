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

ActiveRecord::Schema.define(version: 20151028092338) do

  create_table "experience_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "nationality"
    t.string   "age_range"
    t.string   "interests"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "safe_space_experience_types", force: :cascade do |t|
    t.integer  "safe_space_id"
    t.integer  "experience_type_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "safe_space_experience_types", ["experience_type_id"], name: "index_safe_space_experience_types_on_experience_type_id"
  add_index "safe_space_experience_types", ["safe_space_id"], name: "index_safe_space_experience_types_on_safe_space_id"

  create_table "safe_spaces", force: :cascade do |t|
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "address"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "contact_email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_experience_types", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "experience_type_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "user_experience_types", ["experience_type_id"], name: "index_user_experience_types_on_experience_type_id"
  add_index "user_experience_types", ["user_id"], name: "index_user_experience_types_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
