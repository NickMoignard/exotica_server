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

ActiveRecord::Schema.define(version: 20180328022635) do

  create_table "dancers", force: :cascade do |t|
    t.string "name"
    t.boolean "present"
  end

  create_table "dancers_time_slots", force: :cascade do |t|
    t.integer "dancer_id"
    t.integer "time_slot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dancer_id"], name: "index_dancers_time_slots_on_dancer_id"
    t.index ["time_slot_id"], name: "index_dancers_time_slots_on_time_slot_id"
  end

  create_table "time_slots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "time"
  end

end
