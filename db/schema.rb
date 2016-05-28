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

ActiveRecord::Schema.define(version: 20160526201438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "municipalities", force: true do |t|
    t.string   "clave_estado"
    t.string   "clave_munici"
    t.string   "munici"
    t.integer  "homici2007"
    t.integer  "homici2008"
    t.integer  "homici2009"
    t.integer  "homici2010"
    t.integer  "homici2011"
    t.integer  "homici2012"
    t.integer  "homici2013"
    t.integer  "homici2014"
    t.integer  "homici2015"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "clave_estado"
    t.string   "estado"
    t.integer  "homici2007"
    t.integer  "homici2008"
    t.integer  "homici2009"
    t.integer  "homici2010"
    t.integer  "homici2011"
    t.integer  "homici2012"
    t.integer  "homici2013"
    t.integer  "homici2014"
    t.integer  "homici2015"
    t.string   "iso_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
