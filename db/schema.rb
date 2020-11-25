# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_25_105138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buddy_connections", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_1_id"
    t.integer "user_2_id"
    t.index ["user_1_id"], name: "index_buddy_connections_on_user_1_id"
    t.index ["user_2_id"], name: "index_buddy_connections_on_user_2_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "run_id"
    t.string "status", default: "pending", null: false
    t.index ["run_id"], name: "index_meetings_on_run_id"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "meeting_id_id"
    t.bigint "user_id_id"
    t.string "vibe_rating"
    t.string "route_rating"
    t.string "challenge_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meeting_id_id"], name: "index_reviews_on_meeting_id_id"
    t.index ["user_id_id"], name: "index_reviews_on_user_id_id"
  end

  create_table "runs", force: :cascade do |t|
    t.string "route"
    t.string "length"
    t.string "pace"
    t.string "duration"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.date "date"
    t.bigint "parent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_runs_on_parent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "meetings", "runs"
  add_foreign_key "meetings", "users"
  add_foreign_key "runs", "runs", column: "parent_id"
end
