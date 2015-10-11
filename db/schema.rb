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

ActiveRecord::Schema.define(version: 20150922195510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
<<<<<<< HEAD
<<<<<<< HEAD
    t.string   "name"
=======
    t.string   "name",              limit: 255
>>>>>>> working on is obstructed method
=======
    t.string   "name",              limit: 255
>>>>>>> 07bb8cb2eda6039614d92ead35e88cf5241565b8
    t.integer  "state"
    t.integer  "white_player_id"
    t.integer  "black_player_id"
    t.integer  "winning_player_id"
    t.integer  "active_player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", force: :cascade do |t|
<<<<<<< HEAD
<<<<<<< HEAD
    t.string   "type"
=======
    t.string   "type",       limit: 255
>>>>>>> working on is obstructed method
=======
    t.string   "type",       limit: 255
>>>>>>> 07bb8cb2eda6039614d92ead35e88cf5241565b8
    t.integer  "x_position"
    t.integer  "y_position"
    t.integer  "color"
    t.string   "image",      limit: 255
    t.boolean  "captured"
    t.integer  "player_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
<<<<<<< HEAD
<<<<<<< HEAD
=======
    t.string   "name",                   limit: 255
>>>>>>> working on is obstructed method
=======
    t.string   "name",                   limit: 255
>>>>>>> 07bb8cb2eda6039614d92ead35e88cf5241565b8
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true, using: :btree
  add_index "players", ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree

end
