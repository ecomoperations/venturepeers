# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140310144257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: true do |t|
    t.string   "theavail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "availabilities_peers", id: false, force: true do |t|
    t.integer "availability_id"
    t.integer "peer_id"
  end

  create_table "known_languages", force: true do |t|
    t.string   "thelang"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "known_languages_peers", id: false, force: true do |t|
    t.integer "known_language_id"
    t.integer "peer_id"
  end

  create_table "language_needs", force: true do |t|
    t.string   "theneed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "language_needs_ventures", id: false, force: true do |t|
    t.integer "language_need_id"
    t.integer "venture_id"
  end

  create_table "learning_languages", force: true do |t|
    t.string   "thelearn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learning_languages_peers", id: false, force: true do |t|
    t.integer "learning_language_id"
    t.integer "peer_id"
  end

  create_table "minimum_skills", force: true do |t|
    t.string   "themin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "minimum_skills_ventures", id: false, force: true do |t|
    t.integer "minimum_skill_id"
    t.integer "venture_id"
  end

  create_table "peers", force: true do |t|
    t.integer  "user_id"
    t.integer  "level"
    t.text     "about_me"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "peers_site_interests", id: false, force: true do |t|
    t.integer "site_interest_id"
    t.integer "peer_id"
  end

  create_table "resource_languages", force: true do |t|
    t.string   "thetut"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource_languages_tutorials", id: false, force: true do |t|
    t.integer "resource_language_id"
    t.integer "tutorial_id"
  end

  create_table "site_interests", force: true do |t|
    t.string   "theinte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutorials", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "functionality"
    t.text     "body"
    t.boolean  "suggestion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_payments", force: true do |t|
    t.string   "thepay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_payments_ventures", id: false, force: true do |t|
    t.integer "type_payment_id"
    t.integer "venture_id"
  end

  create_table "type_ventures", force: true do |t|
    t.string   "thetype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_ventures_ventures", id: false, force: true do |t|
    t.integer "type_venture_id"
    t.integer "venture_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "ventures", force: true do |t|
    t.integer  "user_id"
    t.string   "venture_name"
    t.text     "about_venture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
