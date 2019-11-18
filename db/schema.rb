# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_18_171956) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "editorial_id"
    t.index ["editorial_id"], name: "index_books_on_editorial_id"
  end

  create_table "editorials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operation_types", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "type"
  end

  create_table "operations", force: :cascade do |t|
    t.date "date"
    t.integer "user_id"
    t.integer "book_id"
    t.integer "operation_type_id"
    t.index ["book_id"], name: "index_operations_on_book_id"
    t.index ["operation_type_id"], name: "index_operations_on_operation_type_id"
    t.index ["user_id"], name: "index_operations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "auth_tokens"
    t.string "name"
    t.string "surname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "books", "editorials"
  add_foreign_key "operations", "books"
  add_foreign_key "operations", "operation_types"
  add_foreign_key "operations", "users"
end
