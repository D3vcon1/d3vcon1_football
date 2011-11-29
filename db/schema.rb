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

ActiveRecord::Schema.define(:version => 20111129094731) do

  create_table "formations", :force => true do |t|
    t.string   "name"
    t.integer  "def"
    t.integer  "mid"
    t.integer  "fwd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineup_players", :force => true do |t|
    t.integer  "lineup_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineups", :force => true do |t|
    t.string   "name"
    t.integer  "formation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.integer  "goalkeeping"
    t.integer  "passing"
    t.integer  "defense"
    t.integer  "goalscoring"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
