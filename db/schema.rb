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

ActiveRecord::Schema.define(version: 2021_09_15_174018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
  end

  create_table "food_items_order_items", id: false, force: :cascade do |t|
    t.bigint "food_item_id", null: false
    t.bigint "order_item_id", null: false
    t.index ["food_item_id", "order_item_id"], name: "index_food_items_order_items_on_food_item_id_and_order_item_id"
    t.index ["order_item_id", "food_item_id"], name: "index_food_items_order_items_on_order_item_id_and_food_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.float "price"
    t.integer "quantity"
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "email"
    t.float "tax_percent", default: 0.0875
    t.float "tax_amount", default: 0.0
    t.float "gratuity_percent", default: 0.18
    t.float "gratuity_amount", default: 0.0
    t.float "subtotal", default: 0.0
    t.float "total", default: 0.0
    t.boolean "isPaid", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payees", force: :cascade do |t|
    t.string "email"
    t.decimal "tax_amount", default: "0.0"
    t.decimal "gratuity_amount", default: "0.0"
    t.decimal "subtotal", default: "0.0"
    t.decimal "total", default: "0.0"
    t.boolean "isPaid", default: false
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_payees_on_order_id"
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "payees", "orders"
end
