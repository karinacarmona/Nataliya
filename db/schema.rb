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

ActiveRecord::Schema.define(version: 20150323224705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

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
    t.string   "birthday_month"
    t.string   "birthday_day"
    t.string   "birthday_year"
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
    t.string   "day_or_week_available"
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
