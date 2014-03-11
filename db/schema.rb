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

ActiveRecord::Schema.define(version: 20140311195543) do

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

  create_table "conversations", force: true do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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

  create_table "levels", force: true do |t|
    t.string   "thelev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels_peers", id: false, force: true do |t|
    t.integer "level_id"
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

  create_table "notifications", force: true do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "notification_code"
    t.string   "attachment"
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "notifications", ["conversation_id"], name: "index_notifications_on_conversation_id", using: :btree

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

  create_table "receipts", force: true do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "receipts", ["notification_id"], name: "index_receipts_on_notification_id", using: :btree

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

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

  add_foreign_key "notifications", "conversations", name: "notifications_on_conversation_id"

  add_foreign_key "receipts", "notifications", name: "receipts_on_notification_id"

end
