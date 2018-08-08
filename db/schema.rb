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

ActiveRecord::Schema.define(version: 2018_08_07_015418) do

  create_table "articles", force: :cascade do |t|
    t.string "from_name"
    t.text "from_street1"
    t.text "from_street2"
    t.text "from_city"
    t.text "from_state"
    t.text "from_zip"
    t.text "from_phone"
    t.string "to_name"
    t.text "to_company"
    t.text "to_street"
    t.text "to_city"
    t.text "to_state"
    t.text "to_zip"
    t.string "length"
    t.string "width"
    t.string "height"
    t.string "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
