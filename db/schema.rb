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

ActiveRecord::Schema.define(version: 20181203164320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string   "username"
    t.string   "image_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_dogs_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_dogs_on_reset_password_token", unique: true, using: :btree
  end

  create_table "woofs", force: :cascade do |t|
    t.text     "text"
    t.integer  "dog_id"
    t.integer  "rewoof_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_woofs_on_dog_id", using: :btree
    t.index ["rewoof_id"], name: "index_woofs_on_rewoof_id", using: :btree
  end

  add_foreign_key "woofs", "dogs"
end
