# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_13_110643) do
  create_table "admins", force: :cascade do |t|
    t.string "admin_id", null: false
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "room_id"
    t.string "building"
    t.integer "room_no"
    t.boolean "is_available"
  end

  create_table "hallbookings", force: :cascade do |t|
    t.date "date_"
    t.time "start_time"
    t.time "end_time"
    t.string "hall_id"
    t.string "admin_id"
    t.integer "is_approved"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "halls", force: :cascade do |t|
    t.string "hall_id"
    t.string "hall_name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_assignments", force: :cascade do |t|
    t.datetime "date"
    t.time "taking_time"
    t.string "user_id"
    t.string "room_id"
    t.integer "box_key"
    t.boolean "is_returned"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "phone_number"
    t.string "password"
    t.string "role"
    t.string "user_id"
  end

end
