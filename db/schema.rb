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

ActiveRecord::Schema.define(version: 2019_11_11_172056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "player_1_name"
    t.string "player_2_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.bigint "movement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_id"], name: "index_movements_on_movement_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "player_1_movement_id"
    t.bigint "player_2_movement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_rounds_on_game_id"
    t.index ["player_1_movement_id"], name: "index_rounds_on_player_1_movement_id"
    t.index ["player_2_movement_id"], name: "index_rounds_on_player_2_movement_id"
  end

  add_foreign_key "movements", "movements"
  add_foreign_key "rounds", "games"
  add_foreign_key "rounds", "movements", column: "player_1_movement_id"
  add_foreign_key "rounds", "movements", column: "player_2_movement_id"
end
