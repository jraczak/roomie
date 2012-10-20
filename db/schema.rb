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

ActiveRecord::Schema.define(:version => 20121019235320) do

  create_table "bills", :force => true do |t|
    t.string   "name"
    t.string   "provider"
    t.float    "total_due"
    t.date     "due_date"
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "dwelling_id"
    t.boolean  "paid",        :default => false
  end

  create_table "dwelling_roomie_relationships", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dwellings", :force => true do |t|
    t.string   "street_address"
    t.string   "nickname"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "user_id"
    t.integer  "owner_id"
  end

  create_table "shared_expenses", :force => true do |t|
    t.string   "name"
    t.boolean  "stocked",        :default => true
    t.datetime "last_purchased"
    t.integer  "dwelling_id"
    t.integer  "user_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "zip"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "dwelling_id"
    t.string   "remember_token"
    t.string   "password_digest"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "visits", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_of_guests"
    t.text     "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
  end

end
