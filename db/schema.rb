# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160213171354) do

  create_table "client_invoices", force: :cascade do |t|
    t.string   "client_id"
    t.string   "title"
    t.integer  "po_number"
    t.date     "issue_date",         default: '2016-02-13'
    t.boolean  "visible",            default: true
    t.string   "public_url"
    t.integer  "recur",              default: 0
    t.date     "due_date",           default: '2016-02-13'
    t.boolean  "paid",               default: false
    t.string   "currency"
    t.float    "discount",           default: 0.0
    t.boolean  "allow_bank_payment", default: true
    t.string   "tax_type"
    t.float    "tax",                default: 0.0
    t.text     "top_note"
    t.text     "internal_note"
    t.text     "bottom_note"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "client_invoices", ["client_id"], name: "index_client_invoices_on_client_id"
  add_index "client_invoices", ["issue_date"], name: "index_client_invoices_on_issue_date"
  add_index "client_invoices", ["paid"], name: "index_client_invoices_on_paid"
  add_index "client_invoices", ["public_url"], name: "index_client_invoices_on_public_url"
  add_index "client_invoices", ["title"], name: "index_client_invoices_on_title"

  create_table "clients", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "contact"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "currency"
    t.text     "website"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "fax"
    t.text     "address"
    t.text     "additional_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "company_address"
    t.string   "company_info"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
