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

ActiveRecord::Schema.define(version: 20151103053508) do

  create_table "item_colors", force: :cascade do |t|
    t.integer  "item_id",    limit: 11
    t.string   "name",       limit: 20
    t.string   "name_cn",    limit: 20
    t.string   "color_url",  limit: 100
    t.string   "item_url",   limit: 100
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "item_details", force: :cascade do |t|
    t.integer  "item_id",    limit: 11
    t.integer  "color_id",   limit: 11
    t.string   "size_name",  limit: 20
    t.string   "itemcode",   limit: 30
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "item_masters", force: :cascade do |t|
    t.string   "title",       limit: 100
    t.string   "title_cn",    limit: 100
    t.string   "desc",        limit: 300
    t.string   "desc_cn",     limit: 300
    t.string   "spec",        limit: 500
    t.decimal  "unitprice",               precision: 8, scale: 2
    t.decimal  "saleprice",               precision: 8, scale: 2
    t.string   "sizetype_id", limit: 100
    t.string   "model_id",    limit: 100
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

end
