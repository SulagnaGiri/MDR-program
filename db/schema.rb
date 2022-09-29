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

ActiveRecord::Schema.define(version: 2022_09_23_114058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "csv_transaction_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_reports", force: :cascade do |t|
    t.string "store_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monthly_reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_transactions", force: :cascade do |t|
    t.integer "store_id"
    t.string "store_name", null: false
    t.string "city"
    t.integer "pos"
    t.string "acquirer"
    t.integer "tid"
    t.integer "mid"
    t.integer "batch_no"
    t.integer "card_no"
    t.string "name"
    t.string "card_issuer"
    t.string "card_type"
    t.string "card_network"
    t.string "card_colour"
    t.integer "txn_id"
    t.integer "invoice"
    t.integer "approval_code"
    t.string "type"
    t.integer "amount"
    t.integer "tip_amount"
    t.string "currency"
    t.datetime "date"
    t.string "status"
    t.datetime "settlement_date"
    t.string "cashier"
    t.integer "bill_invoice"
    t.integer "rrn"
    t.integer "emi_txn"
    t.integer "emi_month"
    t.string "contactless"
    t.string "cloud_ref_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
    t.string "city"
    t.integer "pos"
    t.integer "tid"
    t.string "card_network"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weekly_reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
