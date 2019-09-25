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

ActiveRecord::Schema.define(version: 2019_09_24_211112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "display_name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "age"
    t.string "gender"
    t.boolean "friend_dates"
    t.string "referral"
    t.boolean "stationary"
    t.boolean "email_list"
    t.string "comments"
    t.boolean "not_in_primary"
    t.integer "primary_interest"
    t.boolean "dates_groups"
    t.boolean "must_match_whole_group"
    t.boolean "kinky"
    t.integer "kink_interest"
    t.boolean "kink_top"
    t.boolean "kink_bottom"
    t.boolean "kink_switch"
    t.boolean "kink_neither"
    t.boolean "kink_unsure"
    t.integer "target_age_floor"
    t.integer "target_age_ceiling"
    t.integer "target_gender_tw"
    t.integer "target_gender_tm"
    t.integer "target_gender_cw"
    t.integer "target_gender_cm"
    t.integer "target_gender_nb"
    t.integer "target_gender_na"
    t.integer "target_opento_tw"
    t.integer "target_opento_tm"
    t.integer "target_opento_cw"
    t.integer "target_opento_cm"
    t.integer "target_opento_nb"
    t.integer "target_opento_na"
    t.boolean "target_kinky"
    t.boolean "target_kink_top"
    t.boolean "target_kink_bottom"
    t.boolean "target_kink_switch"
    t.boolean "target_kink_neither"
    t.boolean "target_kink_unsure"
    t.boolean "target_is_group"
    t.string "target_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
