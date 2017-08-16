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

ActiveRecord::Schema.define(version: 20170815235453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tipos_transacciones", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "habilitado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["descripcion"], name: "index_tipos_transacciones_on_descripcion", unique: true, using: :btree
  end

  create_table "transacciones", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "habilitado"
    t.boolean  "es_ingreso"
    t.integer  "tipo_transaccion_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["descripcion", "tipo_transaccion_id"], name: "index_transacciones_on_descripcion_and_tipo_transaccion_id", unique: true, using: :btree
    t.index ["tipo_transaccion_id"], name: "index_transacciones_on_tipo_transaccion_id", using: :btree
  end

  add_foreign_key "transacciones", "tipos_transacciones"
end
