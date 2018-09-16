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

ActiveRecord::Schema.define(version: 20180916103916) do

  create_table "accounts", force: :cascade do |t|
    t.string   "account_name"
    t.boolean  "debit_acc"
    t.float    "balance"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.date     "date"
    t.string   "vendor"
    t.string   "currency"
    t.float    "amount"
    t.float    "amount_cdn"
    t.string   "purpose"
    t.string   "expense"
    t.string   "account_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
