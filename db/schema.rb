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

ActiveRecord::Schema.define(version: 20160305090024) do

  create_table "building_properties", force: :cascade do |t|
    t.string   "building_id",    limit: 255
    t.string   "property_id",    limit: 255
    t.integer  "building_level", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "building_requirements", force: :cascade do |t|
    t.integer  "building_id",     limit: 4
    t.integer  "req_building_id", limit: 4
    t.integer  "building_level",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "building_udgrades", force: :cascade do |t|
    t.string   "building_id",       limit: 255
    t.integer  "building_level",    limit: 4
    t.integer  "level_requirement", limit: 4
    t.integer  "price",             limit: 4
    t.integer  "builld_time",       limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "builld_time",       limit: 4
    t.integer  "level_requirement", limit: 4
    t.integer  "price",             limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "player_buildings", force: :cascade do |t|
    t.string   "player_id",          limit: 255
    t.string   "building_id",        limit: 255
    t.integer  "building_level",     limit: 4
    t.datetime "started_at"
    t.boolean  "under_construction"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "player_slots", force: :cascade do |t|
    t.integer  "slot_number", limit: 4
    t.string   "skill",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "nickname",   limit: 255
    t.integer  "level",      limit: 4
    t.integer  "exp",        limit: 4
    t.integer  "credits",    limit: 4
    t.integer  "energy",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "room_chats", force: :cascade do |t|
    t.integer  "room",       limit: 4
    t.string   "player_id",  limit: 255
    t.string   "message",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "player_id",  limit: 255
    t.integer  "turn",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "skill_properties", force: :cascade do |t|
    t.string   "skill",          limit: 255
    t.integer  "skill_level",    limit: 4
    t.string   "property_name",  limit: 255
    t.integer  "property_value", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
