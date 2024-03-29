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

ActiveRecord::Schema.define(version: 2019_11_23_153854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "numbers", force: :cascade do |t|
    t.string "phone"
    t.string "category"
    t.string "region"
    t.string "country"
    t.string "site"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "order_requests", force: :cascade do |t|
    t.string "name"
    t.string "connection"
    t.string "cities"
    t.integer "sms_quantity"
    t.float "price"
    t.text "business_description"
    t.text "target_audience_description"
    t.text "type_order"
    t.integer "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "role", default: 2, comment: "1. Admin 2. Customer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
