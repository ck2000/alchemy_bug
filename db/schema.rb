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

ActiveRecord::Schema.define(version: 2020_10_12_174105) do

  create_table "alchemy_users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "login"
    t.string "email"
    t.string "language"
    t.string "encrypted_password", limit: 128, default: "", null: false
    t.string "password_salt", limit: 128, default: "", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.integer "failed_attempts", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.text "cached_tag_list"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "alchemy_roles", default: "member"
    t.index ["alchemy_roles"], name: "index_alchemy_users_on_alchemy_roles"
    t.index ["email"], name: "index_alchemy_users_on_email", unique: true
    t.index ["firstname"], name: "index_alchemy_users_on_firstname"
    t.index ["lastname"], name: "index_alchemy_users_on_lastname"
    t.index ["login"], name: "index_alchemy_users_on_login", unique: true
    t.index ["reset_password_token"], name: "index_alchemy_users_on_reset_password_token", unique: true
  end

end
