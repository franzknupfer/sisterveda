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

ActiveRecord::Schema.define(version: 20160105083109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "practitioners", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "address"
    t.string   "email"
    t.string   "attached_image_file_name"
    t.string   "attached_image_content_type"
    t.integer  "attached_image_file_size"
    t.datetime "attached_image_updated_at"
    t.string   "header1"
    t.string   "header2"
    t.string   "header3"
    t.string   "body"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "background_image_file_name"
    t.string   "background_image_content_type"
    t.integer  "background_image_file_size"
    t.datetime "background_image_updated_at"
    t.string   "phone"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "cost"
    t.integer  "duration"
    t.string   "attached_image_file_name"
    t.string   "attached_image_content_type"
    t.integer  "attached_image_file_size"
    t.datetime "attached_image_updated_at"
  end

end
