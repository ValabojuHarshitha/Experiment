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

ActiveRecord::Schema.define(:version => 20121011151105) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "appointments", :force => true do |t|
    t.string   "place"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "patient_id"
    t.integer  "physician_id"
  end

  create_table "assemblies", :force => true do |t|
    t.string   "name"
    t.integer  "part_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "assemblies_parts", :force => true do |t|
    t.integer  "assembly_id"
    t.integer  "part_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "carts", :force => true do |t|
    t.string   "quantity"
    t.integer  "product_id"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.string   "total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "quantity"
    t.integer  "product_id"
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.integer  "total_price"
    t.integer  "receipt_no"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "parts", :force => true do |t|
    t.string   "name"
    t.integer  "assembly_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "physician_id"
  end

  create_table "physicians", :force => true do |t|
    t.string   "name"
    t.string   "contact"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "patient_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "admin_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
