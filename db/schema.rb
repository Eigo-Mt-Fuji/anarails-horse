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

ActiveRecord::Schema.define(version: 2019_04_13_065635) do

  create_table "insights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "year"
    t.text "month"
    t.text "day"
    t.text "location"
    t.integer "race_number"
    t.text "race_name"
    t.text "a0"
    t.text "course_status"
    t.integer "distance"
    t.integer "candidacy"
    t.string "post_time"
    t.text "a1"
    t.text "a2"
    t.text "a3"
    t.text "horse_name"
    t.text "horse_gender"
    t.integer "horse_age"
    t.text "jockey"
    t.float "weight_carry"
    t.integer "order_finish"
    t.float "order_difference"
    t.integer "popular"
    t.float "odds"
    t.text "record_time"
    t.text "a4"
    t.text "a5"
    t.text "a6"
    t.text "a7"
    t.text "position"
    t.text "up_time"
    t.text "a8"
    t.text "trainer"
    t.text "traing_center"
    t.text "a9"
    t.text "owner"
    t.text "farm"
    t.text "sire"
    t.text "broodmare_sire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
