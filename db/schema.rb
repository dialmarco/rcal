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

ActiveRecord::Schema.define(:version => 20110221015105) do

  create_table "default_practices", :force => true do |t|
    t.integer  "amount"
    t.integer  "practice_unit_id"
    t.integer  "practice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", :force => true do |t|
    t.date     "start"
    t.date     "end"
    t.integer  "end_value"
    t.integer  "start_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_practice_id"
  end

  create_table "practice_entries", :force => true do |t|
    t.integer  "amount"
    t.date     "practice_date"
    t.integer  "user_id"
    t.integer  "user_practice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practice_units", :force => true do |t|
    t.string   "unit_name"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practices", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_practices", :force => true do |t|
    t.integer  "practice_unit_id"
    t.integer  "practice_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
