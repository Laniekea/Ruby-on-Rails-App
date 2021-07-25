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

ActiveRecord::Schema.define(version: 2021_07_25_035242) do

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logs", force: :cascade do |t|
    t.datetime "timestamp"
    t.integer "employees"
    t.float "annual_salary"
    t.float "monthly_income_tax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_logs_on_employee_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "employees"
    t.float "salary"
    t.float "annual_salary"
    t.float "tax_brackets"
    t.float "monthly_nett_income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee_id"
    t.integer "tax_bracket_id"
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
    t.index ["tax_bracket_id"], name: "index_salaries_on_tax_bracket_id"
  end

  create_table "tax_brackets", force: :cascade do |t|
    t.integer "level"
    t.float "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
