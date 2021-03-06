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

ActiveRecord::Schema.define(version: 20140809001043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.integer  "word_id"
    t.integer  "word_location"
    t.boolean  "is_correct_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "player_id"
    t.integer  "answers_correct"
    t.integer  "answers_incorrect"
    t.datetime "time_begin"
    t.datetime "time_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "username",   null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["username"], name: "index_players_on_username", unique: true, using: :btree

  create_table "questions", force: true do |t|
    t.integer  "game_id"
    t.integer  "player_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", force: true do |t|
    t.string   "word",           null: false
    t.string   "definition",     null: false
    t.string   "part_of_speech", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["word"], name: "index_words_on_word", unique: true, using: :btree

end
