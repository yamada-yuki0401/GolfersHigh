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

ActiveRecord::Schema.define(version: 2021_04_13_071704) do

  create_table "answers", force: :cascade do |t|
    t.string "content", null: false
    t.integer "user_id"
    t.integer "messerge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["messerge_id"], name: "index_answers_on_messerge_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text "golfCourseCaption"
    t.string "golfCourseName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follow_relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follower_id", "following_id"], name: "index_follow_relationships_on_follower_id_and_following_id", unique: true
    t.index ["follower_id"], name: "index_follow_relationships_on_follower_id"
    t.index ["following_id"], name: "index_follow_relationships_on_following_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "messerge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
  end

  create_table "messerges", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "comment", null: false
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.integer "hole1", null: false
    t.integer "hole2", null: false
    t.integer "hole3", null: false
    t.integer "hole4", null: false
    t.integer "hole5", null: false
    t.integer "hole6", null: false
    t.integer "hole7", null: false
    t.integer "hole8", null: false
    t.integer "hole9", null: false
    t.integer "hole10", null: false
    t.integer "hole11", null: false
    t.integer "hole12", null: false
    t.integer "hole13", null: false
    t.integer "hole14", null: false
    t.integer "hole15", null: false
    t.integer "hole16", null: false
    t.integer "hole17", null: false
    t.integer "hole18", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "played_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "introduction"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
