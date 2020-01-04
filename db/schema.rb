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

ActiveRecord::Schema.define(version: 2020_01_04_133405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.integer "min_booking_duration"
    t.bigint "user_id"
    t.bigint "spaceship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spaceship_id"], name: "index_bookings_on_spaceship_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "rating"
    t.bigint "spaceship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spaceship_id"], name: "index_reviews_on_spaceship_id"
  end

  create_table "spaceships", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "longitude"
    t.string "latitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_spaceships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "avatar"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "spaceships"
  add_foreign_key "bookings", "users"
  add_foreign_key "reviews", "spaceships"
  add_foreign_key "spaceships", "users"
end
