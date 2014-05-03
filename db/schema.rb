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
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20140503202350) do
=======
ActiveRecord::Schema.define(:version => 20140502225442) do
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "agency_id"
    t.integer  "category_id"
    t.string   "heading"
    t.text     "description"
    t.string   "location"
    t.string   "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

<<<<<<< HEAD
=======

>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
<<<<<<< HEAD
    t.string   "phone"
    t.string   "role"
=======
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

<<<<<<< HEAD
  create_table "users_jobs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

=======
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
end
