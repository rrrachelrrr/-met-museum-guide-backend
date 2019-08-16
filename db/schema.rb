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

ActiveRecord::Schema.define(version: 2019_08_16_162423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: :cascade do |t|
    t.integer "api_id"
    t.string "img_url"
    t.string "title"
    t.string "artist"
    t.string "date"
    t.boolean "is_highlight", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "fav_art_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fav_art_id"], name: "index_comments_on_fav_art_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "fav_arts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "keyword"
    t.boolean "is_highlight", default: false
    t.string "img_url"
    t.string "title"
    t.string "artist"
    t.string "date"
    t.string "collection"
    t.integer "api_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_fav_arts_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.bigint "fav_art_id"
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fav_art_id"], name: "index_tags_on_fav_art_id"
  end

  create_table "user_tags", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_user_tags_on_tag_id"
    t.index ["user_id"], name: "index_user_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "fav_arts"
  add_foreign_key "comments", "users"
  add_foreign_key "fav_arts", "users"
  add_foreign_key "tags", "fav_arts"
  add_foreign_key "user_tags", "tags"
  add_foreign_key "user_tags", "users"
end
