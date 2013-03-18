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

ActiveRecord::Schema.define(:version => 20130317221012) do

  create_table "clients", :force => true do |t|
    t.string   "primaryContact"
    t.string   "phone"
    t.string   "address"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "clientName"
  end

  create_table "projects", :force => true do |t|
    t.string   "clientID"
    t.string   "projectName"
    t.string   "projectDescription"
    t.string   "status"
    t.string   "dueDate"
    t.string   "startDate"
    t.string   "clientName"
    t.string   "primaryContactName"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "projectID"
    t.string   "projectName"
    t.string   "clientName"
    t.string   "taskeeID"
    t.string   "assignedTo"
    t.string   "taskCreator"
    t.string   "taskName"
    t.string   "taskDescription"
    t.string   "status"
    t.string   "priority"
    t.string   "dueDate"
    t.string   "startDate"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "teamID"
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "avatar"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
