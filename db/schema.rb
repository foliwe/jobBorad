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

ActiveRecord::Schema.define(version: 20180809195941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employment_histories", force: :cascade do |t|
    t.string "employer"
    t.string "job_title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "left_bco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "user_profile_id"
  end

  create_table "job_applications", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "where_did_to_see_vacancy"
    t.index ["job_id"], name: "index_job_applications_on_job_id"
    t.index ["user_id"], name: "index_job_applications_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_reference"
    t.string "employer"
    t.string "department"
    t.string "pay_scheme"
    t.decimal "salary_from", precision: 8, scale: 2
    t.decimal "salary_to", precision: 8, scale: 2
    t.string "email"
    t.string "telephone"
    t.string "contact_name"
    t.string "function"
    t.string "job_type", default: "Negotiable"
    t.text "description"
    t.text "note"
    t.datetime "closing_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "qualifications", force: :cascade do |t|
    t.datetime "date_obtained"
    t.string "certificate_obtained"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "user_profile_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "mobile"
    t.string "family_name"
    t.string "first_name"
    t.string "middle_name"
    t.string "ni_number"
    t.string "address"
    t.string "town"
    t.string "state"
    t.string "country"
    t.string "zip_code"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "job_applications", "jobs"
  add_foreign_key "job_applications", "users"
  add_foreign_key "user_profiles", "users"
end
