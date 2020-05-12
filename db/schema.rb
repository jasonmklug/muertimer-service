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

ActiveRecord::Schema.define(version: 2020_05_12_045858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "life_periods", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "age_in_years", null: false
    t.float "probability_of_dying_at_age", null: false
    t.integer "number_surviving_to_age", null: false
    t.integer "number_dying_at_age", null: false
    t.integer "expected_years_remaining_at_age", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "reference_file_id"
    t.index ["reference_file_id"], name: "index_life_periods_on_reference_file_id"
  end

  create_table "reference_files", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "year_of_report", null: false
    t.string "sex", null: false
    t.string "race", null: false
    t.string "origin", null: false
    t.string "url"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "life_periods", "reference_files"
end
