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

ActiveRecord::Schema.define(version: 20150407215651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bicycles", force: :cascade do |t|
    t.string  "description"
    t.integer "customer_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "sender_id"
    t.integer "recipient_id"
    t.string  "body"
  end

  create_table "problems", force: :cascade do |t|
    t.string  "description"
    t.integer "estimate"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "bicycle_id"
    t.integer "mechanic_id"
    t.integer "problem_id"
    t.string  "repair_status"
  end

end
