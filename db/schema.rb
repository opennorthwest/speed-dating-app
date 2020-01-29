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

ActiveRecord::Schema.define(version: 2019_10_07_170509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start"
    t.datetime "finish"
    t.boolean "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_genders_on_user_id"
  end

  create_table "kink_interests", force: :cascade do |t|
    t.string "kink_interest"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_kink_interests_on_user_id"
  end

  create_table "kink_roles", force: :cascade do |t|
    t.string "kink_role"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_kink_roles_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "target_genders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_target_genders_on_gender_id"
    t.index ["user_id"], name: "index_target_genders_on_user_id"
  end

  create_table "target_kink_roles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "kink_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kink_role_id"], name: "index_target_kink_roles_on_kink_role_id"
    t.index ["user_id"], name: "index_target_kink_roles_on_user_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_user_locations_on_location_id"
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "display_name"
    t.string "first_name"
    t.string "last_name"
    t.boolean "email_list"
    t.string "referral"
    t.string "comments"
    t.integer "age"
    t.integer "gender_id"
    t.boolean "kinky"
    t.integer "kink_interest_id"
    t.integer "kink_role_id"
    t.integer "target_kink_role"
    t.boolean "dates_groups"
    t.boolean "must_match_whole_group"
    t.boolean "friend_dates"
    t.boolean "stationary"
    t.integer "target_age_floor"
    t.integer "target_age_ceiling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "genders", "users"
  add_foreign_key "kink_interests", "users"
  add_foreign_key "kink_roles", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "target_genders", "genders"
  add_foreign_key "target_genders", "users"
  add_foreign_key "target_kink_roles", "kink_roles"
  add_foreign_key "target_kink_roles", "users"
  add_foreign_key "user_locations", "locations"
  add_foreign_key "user_locations", "users"
end
