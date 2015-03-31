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

ActiveRecord::Schema.define(version: 20150331171403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banned_champions", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "champion_id"
    t.integer  "champion_key"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "banned_champions", ["champion_id"], name: "index_banned_champions_on_champion_id", using: :btree
  add_index "banned_champions", ["team_id"], name: "index_banned_champions_on_team_id", using: :btree

  create_table "champions", force: :cascade do |t|
    t.integer  "champion_key"
    t.string   "name"
    t.string   "title"
    t.string   "image"
    t.string   "sprite"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "champions_participants", id: false, force: :cascade do |t|
    t.integer "champion_id"
    t.integer "participant_id"
  end

  add_index "champions_participants", ["champion_id", "participant_id"], name: "index_champions_participants_on_champion_id_and_participant_id", using: :btree
  add_index "champions_participants", ["participant_id"], name: "index_champions_participants_on_participant_id", using: :btree

  create_table "match_details", force: :cascade do |t|
    t.datetime "matchCreation"
    t.integer  "matchDuration", limit: 8
    t.string   "region"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "participant_stats", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "assists",                            limit: 8
    t.integer  "champLevel",                         limit: 8
    t.integer  "deaths",                             limit: 8
    t.integer  "double_kills",                       limit: 8
    t.integer  "gold_earned",                        limit: 8
    t.integer  "item0",                              limit: 8
    t.integer  "item1",                              limit: 8
    t.integer  "item2",                              limit: 8
    t.integer  "item3",                              limit: 8
    t.integer  "item4",                              limit: 8
    t.integer  "item5",                              limit: 8
    t.integer  "item6",                              limit: 8
    t.integer  "item7",                              limit: 8
    t.integer  "kills",                              limit: 8
    t.integer  "magic_damage_dealt_to_champions",    limit: 8
    t.integer  "magic_damage_taken",                 limit: 8
    t.integer  "minions_killed",                     limit: 8
    t.integer  "neutral_minions_killed",             limit: 8
    t.integer  "penta_kills",                        limit: 8
    t.integer  "physical_damage_dealt_to_champions", limit: 8
    t.integer  "physical_damage_taken",              limit: 8
    t.integer  "quadra_kills",                       limit: 8
    t.integer  "total_damage_dealt_to_champions",    limit: 8
    t.integer  "total_damage_taken",                 limit: 8
    t.integer  "total_heal",                         limit: 8
    t.integer  "total_time_crowd_control_dealt",     limit: 8
    t.integer  "tower_kills",                        limit: 8
    t.integer  "triple_kills",                       limit: 8
    t.integer  "true_damage_dealt_to_champions",     limit: 8
    t.integer  "unreal_kills",                       limit: 8
    t.integer  "wards_placed",                       limit: 8
    t.boolean  "winner"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "participant_stats", ["participant_id"], name: "index_participant_stats_on_participant_id", using: :btree

  create_table "participants", force: :cascade do |t|
    t.integer  "match_detail_id"
    t.integer  "team_id"
    t.integer  "champion_key"
    t.integer  "team_key"
    t.string   "highest_achieved_season_tier"
    t.integer  "participant_key"
    t.integer  "spell1ld"
    t.integer  "spell2ld"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "participants", ["match_detail_id"], name: "index_participants_on_match_detail_id", using: :btree
  add_index "participants", ["team_id"], name: "index_participants_on_team_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "key"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "team_key"
    t.integer  "baron_kills"
    t.integer  "dragon_kills"
    t.boolean  "firs_baron"
    t.boolean  "first_dragon"
    t.boolean  "first_blood"
    t.boolean  "first_inhibitor"
    t.boolean  "first_tower"
    t.integer  "tower_kills"
    t.boolean  "winner"
    t.integer  "match_detail_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "teams", ["match_detail_id"], name: "index_teams_on_match_detail_id", using: :btree

  add_foreign_key "banned_champions", "champions"
  add_foreign_key "banned_champions", "teams"
  add_foreign_key "participant_stats", "participants"
  add_foreign_key "participants", "match_details"
  add_foreign_key "participants", "teams"
  add_foreign_key "teams", "match_details"
end
