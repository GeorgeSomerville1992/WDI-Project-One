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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140522200654) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.text     "artwork"
    t.date     "date_created"
    t.date     "date_updated"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
    t.integer  "artist_id"
    t.text     "file"
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "picture"
    t.date     "date_created"
    t.date     "date_updated"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "body"
    t.date     "date_logged"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.boolean  "flag"
    t.integer  "song_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "bio"
    t.string   "avatar"
    t.string   "history"
    t.string   "background"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "avatar_file"
    t.integer  "user_id"
    t.string   "theme"
    t.text     "file"
  end

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.text     "file"
    t.date     "date_created"
    t.date     "date_modifed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
    t.integer  "ablum_id"
    t.integer  "artist_id"
  end

  create_table "users", :force => true do |t|
    t.string "name"
    t.string "email"
    t.string "role"
    t.date   "created_at",      :null => false
    t.date   "updated_at",      :null => false
    t.string "password_digest"
  end

end
