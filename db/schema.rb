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

ActiveRecord::Schema.define(version: 20180410074148) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "dayin"
    t.datetime "dayout"
    t.datetime "daycreate"
    t.integer "room_id"
    t.integer "user_id"
    t.integer "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_orders_on_room_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "room_id"
    t.integer "user_id"
    t.integer "rate"
    t.datetime "day_created"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_reviews_on_room_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "room_categories", force: :cascade do |t|
    t.integer "room_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_room_categories_on_category_id"
    t.index ["room_id", "category_id"], name: "index_room_categories_on_room_id_and_category_id", unique: true
    t.index ["room_id"], name: "index_room_categories_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "status", default: true
    t.integer "price"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "passport"
    t.integer "role", default: 0
    t.boolean "isdel", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
