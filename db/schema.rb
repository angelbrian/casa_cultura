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

ActiveRecord::Schema.define(version: 20151128220953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", primary_key: "curp", force: true do |t|
    t.string   "nombre",           limit: 30, null: false
    t.string   "apellido_paterno", limit: 30, null: false
    t.string   "apellido_materno", limit: 30
    t.date     "fecha_registro",              null: false
    t.string   "telefono",         limit: 15, null: false
    t.string   "direccion",        limit: 50, null: false
    t.string   "tipo_sangre",      limit: 4,  null: false
    t.string   "nombre_tutor",     limit: 50, null: false
    t.string   "telefono_tutor",   limit: 15, null: false
    t.string   "sexo",             limit: 1,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "tipo_area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", force: true do |t|
    t.string   "nombre_curso"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cursos", ["area_id"], name: "index_cursos_on_area_id", using: :btree

  create_table "grupos", primary_key: "id_grupo", force: true do |t|
    t.integer  "taller_id"
    t.time     "hora_inicio"
    t.time     "hora_fin"
    t.string   "nivel"
    t.string   "dias"
    t.string   "semestre"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.integer  "cupo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grupos", ["taller_id"], name: "index_grupos_on_taller_id", using: :btree

  create_table "pagos", force: true do |t|
    t.string   "tipo_pago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesors", force: true do |t|
    t.string   "nombre_prof"
    t.string   "apellido_pat_prof"
    t.string   "apellido_mat_prof"
    t.text     "observaciones"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profesors", ["area_id"], name: "index_profesors_on_area_id", using: :btree

  create_table "students", primary_key: "curp", force: true do |t|
    t.string   "nombre",           limit: 30, null: false
    t.string   "apellido_paterno", limit: 30, null: false
    t.string   "apellido_materno", limit: 30
    t.date     "fecha_registro",              null: false
    t.string   "telefono",         limit: 15, null: false
    t.string   "direccion",        limit: 50, null: false
    t.string   "tipo_sangre",      limit: 4,  null: false
    t.string   "nombre_tutor",     limit: 50, null: false
    t.string   "telefono_tutor",   limit: 15, null: false
    t.string   "sexo",             limit: 1,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tallers", primary_key: "id_taller", force: true do |t|
    t.integer  "profesor_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tallers", ["curso_id"], name: "index_tallers_on_curso_id", using: :btree
  add_index "tallers", ["profesor_id"], name: "index_tallers_on_profesor_id", using: :btree

end
