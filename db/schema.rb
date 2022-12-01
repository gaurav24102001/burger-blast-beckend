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

ActiveRecord::Schema[7.0].define(version: 2021_02_18_044246) do
  create_table "burgers", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "image"
    t.string "status"
    t.string "description"
    t.integer "burgertable_id"
    t.string "burgertable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["burgertable_type", "burgertable_id"], name: "index_burgers_on_burgertable_type_and_burgertable_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "burgertable_type"
    t.integer "burgertable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["burgertable_type", "burgertable_id"], name: "index_restaurants_on_burgertable_type_and_burgertable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "burgertable_type"
    t.integer "burgertable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["burgertable_type", "burgertable_id"], name: "index_users_on_burgertable_type_and_burgertable_id"
  end

end
