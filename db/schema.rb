# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_27_034016) do

  create_table "sensor_counters", force: :cascade do |t|
    t.integer "count", default: 0
    t.integer "sensor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sensor_id"], name: "index_sensor_counters_on_sensor_id"
  end

  create_table "sensor_tracks", force: :cascade do |t|
    t.integer "value"
    t.string "ship"
    t.datetime "time_traking"
    t.integer "sensor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sensor_id"], name: "index_sensor_tracks_on_sensor_id"
  end

  create_table "sensors", force: :cascade do |t|
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sensor_counters", "sensors"
  add_foreign_key "sensor_tracks", "sensors"
end
