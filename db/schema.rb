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

ActiveRecord::Schema.define(version: 20180209162035) do

  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
  end

  create_table "county_data", force: :cascade do |t|
    t.integer "deaths"
    t.integer "population"
    t.integer "county_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "region_id"
    t.string "abbreviation"
    t.integer "division_id"
  end

end
