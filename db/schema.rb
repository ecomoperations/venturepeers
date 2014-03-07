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

ActiveRecord::Schema.define(version: 20140307175538) do

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

  create_table "learning_languages", force: true do |t|
    t.string   "thelearn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "learning_languages_peers", id: false, force: true do |t|
    t.integer "learning_language_id"
    t.integer "peer_id"
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

  create_table "site_interests", force: true do |t|
    t.string   "theinte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
