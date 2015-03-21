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

ActiveRecord::Schema.define(version: 20150321183905) do

  create_table "educations", force: :cascade do |t|
    t.integer  "volunteers_id"
    t.string   "dates"
    t.text     "qualification_courses"
    t.text     "place_of_education"
    t.string   "grade"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "success_stories", force: :cascade do |t|
    t.string   "photo_url"
    t.string   "date"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "embed_link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "telephone"
    t.string   "mobile"
    t.string   "email"
    t.string   "birthday"
    t.text     "position_question"
    t.string   "ec_name"
    t.string   "ec_telephone"
    t.boolean  "mon_am"
    t.boolean  "mon_pm"
    t.boolean  "tues_am"
    t.boolean  "tues_pm"
    t.boolean  "wed_am"
    t.boolean  "wed_pm"
    t.boolean  "thurs_am"
    t.boolean  "thurs_pm"
    t.boolean  "fri_am"
    t.boolean  "fri_pm"
    t.integer  "hours_available"
    t.boolean  "day_or_week_available"
    t.text     "why_interested"
    t.text     "skills"
    t.text     "convictions"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.integer  "volunteers_id"
    t.string   "dates"
    t.text     "employer"
    t.text     "job"
    t.text     "reason_for_leaving"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end