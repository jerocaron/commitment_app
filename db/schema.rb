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

ActiveRecord::Schema.define(version: 2019_05_07_125254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignements", force: :cascade do |t|
    t.bigint "proposal_id"
    t.bigint "associated_risk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["associated_risk_id"], name: "index_assignements_on_associated_risk_id"
    t.index ["proposal_id"], name: "index_assignements_on_proposal_id"
  end

  create_table "associated_risks", force: :cascade do |t|
    t.string "description"
    t.integer "frequency"
    t.integer "impact"
    t.integer "detection"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_groups_on_company_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "description"
    t.string "status"
    t.date "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "scope_id"
    t.index ["scope_id"], name: "index_proposals_on_scope_id"
    t.index ["user_id"], name: "index_proposals_on_user_id"
  end

  create_table "scopes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "group_id"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignements", "associated_risks"
  add_foreign_key "assignements", "proposals"
  add_foreign_key "groups", "companies"
  add_foreign_key "proposals", "scopes"
  add_foreign_key "proposals", "users"
  add_foreign_key "users", "groups"
end
