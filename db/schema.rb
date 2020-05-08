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

ActiveRecord::Schema.define(version: 2020_04_24_212821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "aulas", id: :serial, force: :cascade do |t|
    t.string "sequencia"
    t.string "titulo"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "curso_id"
    t.index ["curso_id"], name: "index_aulas_on_curso_id"
  end

  create_table "caderno_respostas", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "pergunta_id"
    t.integer "resposta", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pergunta_id"], name: "index_caderno_respostas_on_pergunta_id"
    t.index ["usuario_id", "pergunta_id"], name: "index_caderno_respostas_on_usuario_id_and_pergunta_id", unique: true
    t.index ["usuario_id"], name: "index_caderno_respostas_on_usuario_id"
  end

  create_table "conteudos", id: :serial, force: :cascade do |t|
    t.integer "aula_id"
    t.string "titulo"
    t.text "descricao"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aula_id"], name: "index_conteudos_on_aula_id"
  end

  create_table "cursos", id: :serial, force: :cascade do |t|
    t.string "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sigla"
  end

  create_table "dons", id: :serial, force: :cascade do |t|
    t.string "nome_dom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", id: :serial, force: :cascade do |t|
    t.string "titulo_grupo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "igrejas", id: :serial, force: :cascade do |t|
    t.string "nome"
    t.string "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "niveis", id: :serial, force: :cascade do |t|
    t.integer "dons", limit: 2
    t.integer "tipo", limit: 2
    t.integer "nivel"
    t.integer "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perguntas", id: :serial, force: :cascade do |t|
    t.integer "grupo_id"
    t.text "titulo_pergunta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grupo_id"], name: "index_perguntas_on_grupo_id"
  end

  create_table "respostas", id: :serial, force: :cascade do |t|
    t.integer "grupo_id"
    t.string "resposta"
    t.integer "peso", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grupo_id"], name: "index_respostas_on_grupo_id"
  end

  create_table "resultados", id: :serial, force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "dom_id"
    t.integer "tipo", limit: 2
    t.integer "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dom_id"], name: "index_resultados_on_dom_id"
    t.index ["usuario_id"], name: "index_resultados_on_usuario_id"
  end

  create_table "turmas", id: :serial, force: :cascade do |t|
    t.string "codigo_turma"
    t.date "data_inicio"
    t.date "data_termino"
    t.date "data_formatura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "aberta", limit: 2
    t.integer "questionario", limit: 2, default: 0
    t.integer "curso_id"
    t.index ["curso_id"], name: "index_turmas_on_curso_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "nome_completo"
    t.string "endereco"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.date "nascimento"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categoria", limit: 2, default: 1
    t.integer "processado", limit: 2, default: 0
    t.integer "admin", limit: 2
    t.date "data_escola"
    t.integer "turma_id"
    t.string "codigo_turma"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["turma_id"], name: "index_usuarios_on_turma_id"
  end

  create_table "views", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "aulas", "cursos"
  add_foreign_key "caderno_respostas", "perguntas"
  add_foreign_key "caderno_respostas", "usuarios"
  add_foreign_key "conteudos", "aulas"
  add_foreign_key "perguntas", "grupos"
  add_foreign_key "respostas", "grupos"
  add_foreign_key "resultados", "dons"
  add_foreign_key "resultados", "usuarios"
  add_foreign_key "turmas", "cursos"
  add_foreign_key "usuarios", "turmas"
end
