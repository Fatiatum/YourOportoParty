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

ActiveRecord::Schema.define(version: 20160105232421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string   "text_pt"
    t.string   "text_en"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalogs", force: :cascade do |t|
    t.string   "text_pt"
    t.string   "text_en"
    t.string   "exp_title_pt"
    t.string   "exp_title_en"
    t.string   "exp_text_pt"
    t.string   "exp_text_en"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "text_pt"
    t.string   "text_en"
    t.string   "phone_pt"
    t.string   "phone_en"
    t.string   "email_pt"
    t.string   "email_en"
    t.string   "address_pt"
    t.string   "address_en"
    t.string   "from_mail"
    t.string   "name"
    t.string   "subject"
    t.string   "msg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "program_type"
    t.string   "package_type"
    t.string   "description_pt"
    t.string   "description_en"
    t.string   "price"
    t.integer  "Product_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_transactions", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "action"
    t.string   "amount"
    t.boolean  "success"
    t.string   "authorization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "experience_id"
    t.string   "name"
    t.string   "email"
    t.string   "program_type"
    t.string   "package_type"
    t.string   "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name_pt"
    t.string   "name_en"
    t.string   "description_pt"
    t.string   "description_en"
    t.string   "image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "name_pt"
    t.string   "name_en"
    t.string   "answer_pt"
    t.string   "answer_en"
    t.integer  "faq_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["faq_id"], name: "index_questions_on_faq_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "iban"
    t.integer  "nib"
    t.string   "fb_link"
    t.string   "tw_link"
    t.string   "insta_link"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.string   "title_pt"
    t.string   "title_en"
    t.string   "subtitle_pt"
    t.string   "subtitle_en"
    t.string   "texttitle_pt"
    t.string   "texttitle_en"
    t.string   "text_pt"
    t.string   "text_en"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "questions", "faqs"
end
