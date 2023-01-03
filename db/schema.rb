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

ActiveRecord::Schema[7.0].define(version: 2023_01_02_133452) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "Name"
    t.string "Measurement_Unit"
    t.integer "Price"
    t.integer "Quantity"
    t.integer "User_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "User_ID_id"
    t.index ["User_ID_id"], name: "index_foods_on_User_ID_id"
  end

  create_table "recipe_foods", force: :cascade do |t|
    t.integer "Quantity"
    t.integer "Recipe_ID"
    t.integer "Food_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "Food_ID_id"
    t.bigint "Recipe_ID_id"
    t.index ["Food_ID_id"], name: "index_recipe_foods_on_Food_ID_id"
    t.index ["Recipe_ID_id"], name: "index_recipe_foods_on_Recipe_ID_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "Name"
    t.string "Preparation_Time"
    t.string "Cooking_Time"
    t.text "Decription"
    t.boolean "Public"
    t.integer "User_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "User_ID_id"
    t.index ["User_ID_id"], name: "index_recipes_on_User_ID_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "foods", "users", column: "User_ID_id"
  add_foreign_key "recipe_foods", "foods", column: "Food_ID_id"
  add_foreign_key "recipe_foods", "recipes", column: "Recipe_ID_id"
  add_foreign_key "recipes", "users", column: "User_ID_id"
end
