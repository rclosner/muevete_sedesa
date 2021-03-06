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

ActiveRecord::Schema.define(version: 20140420231033) do

  create_table "actions", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level",      default: 1
    t.boolean  "canjeable",  default: false
    t.string   "code"
    t.string   "lugar"
    t.string   "promotor"
    t.boolean  "recurrente"
    t.string   "fecha"
    t.string   "horario"
  end

  create_table "badge_relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "badge_relationships", ["badge_id"], name: "index_badge_relationships_on_badge_id"
  add_index "badge_relationships", ["user_id", "badge_id"], name: "index_badge_relationships_on_user_id_and_badge_id", unique: true
  add_index "badge_relationships", ["user_id"], name: "index_badge_relationships_on_user_id"

  create_table "badges", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friend_relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friend_relationships", ["followed_id"], name: "index_friend_relationships_on_followed_id"
  add_index "friend_relationships", ["follower_id", "followed_id"], name: "index_friend_relationships_on_follower_id_and_followed_id", unique: true
  add_index "friend_relationships", ["follower_id"], name: "index_friend_relationships_on_follower_id"

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed",  default: false
  end

  add_index "relationships", ["action_id"], name: "index_relationships_on_action_id"
  add_index "relationships", ["user_id", "action_id"], name: "index_relationships_on_user_id_and_action_id", unique: true
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "users", force: true do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "points",                 default: 0
    t.integer  "level",                  default: 1
    t.string   "provider"
    t.string   "uid"
    t.string   "access_token_fb"
    t.string   "access_token_tw"
    t.string   "access_token_gp"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
