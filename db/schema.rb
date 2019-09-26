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

ActiveRecord::Schema.define(version: 2019_09_26_015119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kink_interests", force: :cascade do |t|
    t.string "kink_interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kink_roles", force: :cascade do |t|
    t.string "kink_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "display_name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.boolean "email_list"
    t.string "referral"
    t.string "comments"
    t.integer "age"
    t.integer "gender_id"
    t.boolean "kinky"
    t.integer "kink_interest_id"
    t.integer "kink_role_id"
    t.boolean "dates_groups"
    t.boolean "must_match_whole_group"
    t.boolean "friend_dates"
    t.boolean "stationary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "users", "genders"
  add_foreign_key "users", "kink_interests"
  add_foreign_key "users", "kink_roles"
end
