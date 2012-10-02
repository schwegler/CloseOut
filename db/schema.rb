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

ActiveRecord::Schema.define(:version => 20121002131752) do

  create_table "antennas", :force => true do |t|
    t.integer  "radio_id"
    t.string   "desc"
    t.string   "antenna"
    t.string   "azimuth"
    t.string   "elevation"
    t.string   "frequencytx"
    t.string   "frequencyrx"
    t.string   "height"
    t.string   "txpower"
    t.string   "serialnumber"
    t.string   "phasingcolor1"
    t.string   "phasingcolor2"
    t.string   "sectorsize"
    t.string   "antennatype"
    t.string   "dishsize"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "boms", :force => true do |t|
    t.string   "worktype"
    t.text     "item"
    t.string   "estq"
    t.string   "usedq"
    t.string   "vendor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "site_id"
    t.integer  "tech_id"
  end

  create_table "clips", :force => true do |t|
    t.text     "description"
    t.string   "file"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "clips", ["attachable_id"], :name => "index_clips_on_attachable_id"

  create_table "notes", :force => true do |t|
    t.string   "subject"
    t.datetime "date"
    t.text     "note"
    t.datetime "submitedon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "created_on"
    t.integer  "site_id"
    t.integer  "tech_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "timestamp"
  end

  create_table "radios", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "tower_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scope_of_works", :force => true do |t|
    t.string   "worktype"
    t.text     "item"
    t.string   "completed"
    t.string   "contractor"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "tech_id"
    t.integer  "site_id"
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "location"
    t.string   "type"
    t.string   "county"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "tech_id"
    t.integer  "scope_of_work_id"
    t.string   "siteimg"
  end

  create_table "teches", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "site_id"
    t.integer  "scope_of_work_id"
  end

  create_table "towers", :force => true do |t|
    t.string   "name"
    t.integer  "numbeant"
    t.integer  "numbnewant"
    t.text     "oldcables"
    t.text     "newcables"
    t.integer  "site_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
