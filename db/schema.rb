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

ActiveRecord::Schema.define(:version => 20131022211523) do

  create_table "chromosomes", :force => true do |t|
    t.string   "location"
    t.integer  "gal4_line_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.integer  "gal4_line_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "expression_profiles", :force => true do |t|
    t.integer  "gal4_line_id"
    t.integer  "start_stage_id"
    t.integer  "end_stage_id"
    t.string   "assessed_by"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "expression_profiles_locations", :id => false, :force => true do |t|
    t.integer "expression_profile_id"
    t.integer "location_id"
  end

  create_table "gal4_lines", :force => true do |t|
    t.string   "name"
    t.integer  "version"
    t.string   "p_element_backbone"
    t.text     "regulatory_sequence"
    t.string   "gene"
    t.integer  "copynumber"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stages", :force => true do |t|
    t.string   "name"
    t.string   "time_range"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
