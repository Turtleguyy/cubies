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

ActiveRecord::Schema.define(:version => 20130320001424) do

  create_table "clients", :force => true do |t|
    t.string   "contact_name"
    t.string   "primary_contact"
    t.string   "phone"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "client_id"
    t.string   "project_name"
    t.string   "project_description"
    t.string   "status"
    t.string   "due_date"
    t.string   "start_date"
    t.string   "client_name"
    t.string   "primary_contact_name"
    t.string   "student_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "user_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "project_id"
    t.string   "project_name"
    t.string   "client_name"
    t.string   "taskee_id"
    t.string   "assigned_to"
    t.string   "task_creator"
    t.string   "task_name"
    t.string   "task_description"
    t.string   "status"
    t.string   "priority"
    t.string   "due_date"
    t.string   "start_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "team_id"
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "avatar"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "student_id"
  end

end
