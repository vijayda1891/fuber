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

ActiveRecord::Schema.define(version: 2019_12_13_110011) do

  create_table "cabs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "car_name"
    t.string "car_type"
    t.string "car_number"
    t.integer "car_capacity"
    t.string "car_color"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "mobile"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "rides", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pickup"
    t.string "drop"
    t.integer "ride_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cab_id"
    t.bigint "customer_id"
    t.index ["cab_id"], name: "index_rides_on_cab_id"
    t.index ["customer_id"], name: "index_rides_on_customer_id"
  end

  add_foreign_key "rides", "cabs"
  add_foreign_key "rides", "customers"
end
