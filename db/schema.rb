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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101227231329) do

  create_table "boxes", :force => true do |t|
    t.string   "label"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "casettes", :force => true do |t|
    t.string   "label"
    t.integer  "box_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compilations", :force => true do |t|
    t.string   "title"
    t.integer  "casette_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "composers", :force => true do |t|
    t.string   "name"
    t.integer  "born_year"
    t.integer  "deceased_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "green_binders", :force => true do |t|
    t.string   "title"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "street"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tunes", :force => true do |t|
    t.string   "title"
    t.integer  "composer_id"
    t.integer  "compilation_id"
    t.integer  "casette_id"
    t.integer  "greenbinder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
