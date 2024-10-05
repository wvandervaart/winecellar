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

ActiveRecord::Schema[7.2].define(version: 2024_10_05_154940) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.text "street"
    t.integer "number"
    t.text "zipcode"
    t.text "city"
    t.text "land"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grapes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.integer "type"
    t.text "description"
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "country"
    t.text "region"
    t.text "village"
  end

  create_table "producers", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.bigint "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_producers_on_address_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "suffix"
    t.string "password_digest"
    t.integer "level"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vintages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "wine_id", null: false
    t.float "abv"
    t.float "price"
    t.text "foodparing"
    t.index ["wine_id"], name: "index_vintages_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.bigint "producer_id", null: false
    t.bigint "location_id", null: false
    t.bigint "grape_id", null: false
    t.index ["grape_id"], name: "index_wines_on_grape_id"
    t.index ["location_id"], name: "index_wines_on_location_id"
    t.index ["producer_id"], name: "index_wines_on_producer_id"
  end

  add_foreign_key "producers", "addresses"
  add_foreign_key "vintages", "wines"
  add_foreign_key "wines", "grapes"
  add_foreign_key "wines", "locations"
  add_foreign_key "wines", "producers"
end
