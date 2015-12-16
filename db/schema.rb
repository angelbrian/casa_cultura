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

ActiveRecord::Schema.define(version: 20151216030220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: true do |t|
    t.string   "tipo_area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "nombre_curso"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["area_id"], name: "index_courses_on_area_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "clave_grupo"
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

  add_index "groups", ["taller_id"], name: "index_groups_on_taller_id", using: :btree

  create_table "lessons", force: true do |t|
    t.string   "clave_taller"
    t.integer  "profesor_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["curso_id"], name: "index_lessons_on_curso_id", using: :btree
  add_index "lessons", ["profesor_id"], name: "index_lessons_on_profesor_id", using: :btree

  create_table "pays", force: true do |t|
    t.string   "tipo_pago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "curp"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "sexo"
    t.date     "fecha_de_nac"
    t.string   "direccion"
    t.string   "telefono"
    t.date     "fecha_de_registro"
    t.string   "tipo_de_sangre"
    t.string   "nombre_tutor"
    t.string   "telefono_tutor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "nombre_prof"
    t.string   "apellido_pat_prof"
    t.string   "apellido_mat_prof"
    t.text     "observaciones"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["area_id"], name: "index_teachers_on_area_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
