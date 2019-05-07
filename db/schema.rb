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

ActiveRecord::Schema.define(version: 2019_05_07_211919) do

  create_table "beer_tags", force: :cascade do |t|
    t.integer "beer_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.float "ABV"
    t.integer "IBU"
    t.string "description"
    t.boolean "available"
    t.float "price"
    t.string "availability"
    t.boolean "on_site_purchase"
    t.integer "glass_size"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brewery_id"
    t.integer "retailer_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "website"
    t.text "description"
    t.integer "established"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "favorite_beers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "review"
  end

  create_table "retailer_beers", force: :cascade do |t|
    t.integer "beer_id"
    t.integer "retailer_id"
    t.float "retailer_price"
    t.string "glass_size"
    t.integer "number_of_barrels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retailers", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "is_retailer"
    t.boolean "is_brewery"
    t.boolean "is_customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

end
