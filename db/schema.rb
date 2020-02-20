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

ActiveRecord::Schema.define(version: 2020_02_20_084120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "identities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_identities_on_user_id"
  end

  create_table "relative_user_wishes", force: :cascade do |t|
    t.bigint "relative_id"
    t.bigint "user_wish_id"
    t.bigint "wish_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["relative_id"], name: "index_relative_user_wishes_on_relative_id"
    t.index ["user_wish_id"], name: "index_relative_user_wishes_on_user_wish_id"
    t.index ["wish_id"], name: "index_relative_user_wishes_on_wish_id"
  end

  create_table "relatives", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "relation"
    t.string "contact_number"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_relatives_on_user_id"
  end

  create_table "user_wishes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "wish_id"
    t.text "description"
    t.string "frequency"
    t.string "when_to"
    t.string "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_wishes_on_user_id"
    t.index ["wish_id"], name: "index_user_wishes_on_wish_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.boolean "is_alive", default: true, null: false
    t.boolean "is_admin", default: false, null: false
    t.datetime "date_of_birth"
    t.datetime "last_activity", default: "2020-02-20 07:38:41", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "wishes", force: :cascade do |t|
    t.string "title"
    t.boolean "is_global", default: false, null: false
    t.boolean "is_pending", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "identities", "users"
  add_foreign_key "relative_user_wishes", "relatives"
  add_foreign_key "relative_user_wishes", "user_wishes"
  add_foreign_key "relative_user_wishes", "wishes"
  add_foreign_key "relatives", "users"
  add_foreign_key "user_wishes", "users"
  add_foreign_key "user_wishes", "wishes"
end
