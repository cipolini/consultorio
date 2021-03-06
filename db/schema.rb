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

ActiveRecord::Schema.define(:version => 20110514174203) do

  create_table "consultas", :force => true do |t|
    t.integer  "paciente_id"
    t.string   "descricao"
    t.string   "tipo_consulta"
    t.string   "exames"
    t.string   "exame_fisico"
    t.string   "cirurgia"
    t.string   "diagnostico"
    t.string   "convenio"
    t.string   "tipo_plano"
    t.datetime "data_consulta"
    t.string   "status"
    t.integer  "consulta_id"
    t.integer  "medico_id"
    t.integer  "systemuser_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "antecedentes"
  end

  create_table "convenios", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_civils", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "nome"
    t.integer  "consulta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicos", :force => true do |t|
    t.string   "nome"
    t.integer  "systemuser_id"
    t.string   "crm"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "cpf"
    t.string   "rg"
    t.string   "nome"
    t.string   "cep"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "complemento"
    t.string   "sexo"
    t.string   "estado_Civil"
    t.datetime "data_nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planos", :force => true do |t|
    t.string   "descricao"
    t.integer  "convenio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_system_users", :force => true do |t|
    t.string   "descricao"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "email"
    t.string   "status"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_consultas", :force => true do |t|
    t.string   "descricao"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_system_users", :force => true do |t|
    t.string   "tipo"
    t.string   "descricao"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
