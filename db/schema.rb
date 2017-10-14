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

ActiveRecord::Schema.define(version: 20171014133750) do

  create_table "cuentas", force: :cascade do |t|
    t.string   "descripcion",   limit: 50
    t.decimal  "saldo_inicial",            precision: 18, scale: 2, default: "0.0"
    t.boolean  "habilitado",                                        default: true
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
  end

  create_table "movimientos", force: :cascade do |t|
    t.date     "fecha_mov",                               default: '2017-09-07'
    t.integer  "transaccion_id"
    t.decimal  "importe",        precision: 18, scale: 2, default: "0.0"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.integer  "cuenta_id"
    t.index ["cuenta_id"], name: "index_movimientos_on_cuenta_id"
    t.index ["transaccion_id"], name: "index_movimientos_on_transaccion_id"
  end

  create_table "tipos_transacciones", force: :cascade do |t|
    t.string   "descripcion"
    t.boolean  "habilitado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["descripcion"], name: "index_tipos_transacciones_on_descripcion", unique: true
  end

  create_table "transacciones", force: :cascade do |t|
    t.string   "descripcion",         limit: 255
    t.boolean  "habilitado"
    t.boolean  "es_debito"
    t.integer  "tipo_transaccion_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["descripcion", "tipo_transaccion_id"], name: "index_transacciones_on_descripcion_and_tipo_transaccion_id", unique: true
    t.index ["tipo_transaccion_id"], name: "index_transacciones_on_tipo_transaccion_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
