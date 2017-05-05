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

ActiveRecord::Schema.define(version: 20170505021906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caderno_respostas", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "pergunta_id"
    t.integer  "resposta",    limit: 2
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["pergunta_id"], name: "index_caderno_respostas_on_pergunta_id", using: :btree
    t.index ["usuario_id", "pergunta_id"], name: "index_caderno_respostas_on_usuario_id_and_pergunta_id", unique: true, using: :btree
    t.index ["usuario_id"], name: "index_caderno_respostas_on_usuario_id", using: :btree
  end

  create_table "dons", force: :cascade do |t|
    t.string   "nome_dom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "titulo_grupo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "niveis", force: :cascade do |t|
    t.integer  "dons",       limit: 2
    t.integer  "tipo",       limit: 2
    t.integer  "nivel"
    t.integer  "valor"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "perguntas", force: :cascade do |t|
    t.integer  "grupo_id"
    t.text     "titulo_pergunta"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["grupo_id"], name: "index_perguntas_on_grupo_id", using: :btree
  end

  create_table "respostas", force: :cascade do |t|
    t.integer  "grupo_id"
    t.string   "resposta"
    t.integer  "peso",       limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["grupo_id"], name: "index_respostas_on_grupo_id", using: :btree
  end

  create_table "resultados", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "dom_id"
    t.integer  "tipo",       limit: 2
    t.integer  "valor"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["dom_id"], name: "index_resultados_on_dom_id", using: :btree
    t.index ["usuario_id"], name: "index_resultados_on_usuario_id", using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "nome_completo"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.date     "nascimento"
    t.string   "telefone"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "categoria",              limit: 2, default: 1
    t.integer  "processado",             limit: 2, default: 0
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  end

  create_table "views", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_views_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "caderno_respostas", "perguntas"
  add_foreign_key "caderno_respostas", "usuarios"
  add_foreign_key "perguntas", "grupos"
  add_foreign_key "respostas", "grupos"
  add_foreign_key "resultados", "dons"
  add_foreign_key "resultados", "usuarios"
end
