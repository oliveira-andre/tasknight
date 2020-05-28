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

ActiveRecord::Schema.define(version: 2020_05_27_013411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_attributes", force: :cascade do |t|
    t.integer "str"
    t.integer "agi"
    t.integer "vit"
    t.integer "int"
    t.integer "dex"
    t.integer "luk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.float "hp"
    t.float "mp"
    t.integer "gold"
    t.bigint "character_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "character_attribute_id"
    t.index ["character_attribute_id"], name: "index_characters_on_character_attribute_id"
    t.index ["character_class_id"], name: "index_characters_on_character_classes_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.text "description"
    t.bigint "character_attribute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_attribute_id"], name: "index_monsters_on_character_attribute_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "opponent_id"
    t.boolean "finished"
    t.integer "winner_id"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_tasks_on_character_id"
  end

  add_foreign_key "characters", "character_attributes"
  add_foreign_key "monsters", "character_attributes"
  add_foreign_key "tasks", "characters"
end
