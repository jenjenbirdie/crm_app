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

ActiveRecord::Schema.define(:version => 20110721060030) do

  create_table "companies", :force => true do |t|
    t.string   "companyName"
    t.string   "companyType"
    t.string   "customerType"
    t.string   "industry"
    t.string   "tinNo"
    t.string   "vip"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "individuals", :force => true do |t|
    t.string   "salutation"
    t.string   "firstName"
    t.string   "middleName"
    t.string   "lastName"
    t.string   "suffix"
    t.string   "department"
    t.string   "position"
    t.string   "positionDesc"
    t.string   "contactType"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
