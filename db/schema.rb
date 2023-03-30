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

<<<<<<<<< Temporary merge branch 1
ActiveRecord::Schema[7.0].define(version: 2023_03_29_140659) do
=========
ActiveRecord::Schema[7.0].define(version: 2023_03_29_115931) do
>>>>>>>>> Temporary merge branch 2
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.date "event_date"
    t.string "event_location"
    t.string "event_description"
    t.string "poster_url"
    t.decimal "event_price"
    t.integer "total_tickets"
    t.time "start_time"
    t.time "end_time"
    t.string "contact"
    t.integer "age_restriction"
    t.text "ticket_info"
    t.text "lineup"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_likes_on_event_id"
    t.index ["user_id", "event_id"], name: "index_likes_on_user_id_and_event_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "level"
  end

  add_foreign_key "likes", "events"
  add_foreign_key "likes", "users"
end
