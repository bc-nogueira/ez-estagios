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

ActiveRecord::Schema.define(version: 2018_06_25_144939) do

  create_table 'accounts', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'perfil_type'
    t.integer 'perfil_id'
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_accounts_on_email', unique: true
    t.index ['perfil_type', 'perfil_id'], name: 'index_accounts_on_perfil_type_and_perfil_id'
    t.index ['reset_password_token'], name: 'index_accounts_on_reset_password_token', unique: true
  end

  create_table 'aluno_habilidades', force: :cascade do |t|
    t.integer 'aluno_id'
    t.integer 'habilidade_id'
    t.integer 'nivel'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['aluno_id'], name: 'index_aluno_habilidades_on_aluno_id'
    t.index ['habilidade_id'], name: 'index_aluno_habilidades_on_habilidade_id'
  end

  create_table 'aluno_horarios', force: :cascade do |t|
    t.integer 'aluno_id'
    t.integer 'dia_semana'
    t.integer 'hora_inicio'
    t.integer 'hora_fim'
    t.integer 'minuto_inicio'
    t.integer 'minuto_fim'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['aluno_id'], name: 'index_aluno_horarios_on_aluno_id'
  end

  create_table 'aluno_vagas', force: :cascade do |t|
    t.integer 'vaga_id'
    t.integer 'aluno_id'
    t.boolean 'validado_coordenador'
    t.boolean 'validado_empresa'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['aluno_id'], name: 'index_aluno_vagas_on_aluno_id'
    t.index ['vaga_id'], name: 'index_aluno_vagas_on_vaga_id'
  end

  create_table 'alunos', force: :cascade do |t|
    t.string 'matricula'
    t.integer 'periodo'
    t.boolean 'validado'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'coordenadores', force: :cascade do |t|
    t.string 'curso'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'empresas', force: :cascade do |t|
    t.string 'nome', null: false
    t.string 'cnpj', null: false
    t.string 'endereco', null: false
    t.boolean 'validada'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'habilidades', force: :cascade do |t|
    t.string 'nome'
    t.text 'descricao'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'pessoas', force: :cascade do |t|
    t.string 'nome'
    t.string 'cpf'
    t.string 'papel_type'
    t.integer 'papel_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['papel_type', 'papel_id'], name: 'index_pessoas_on_papel_type_and_papel_id'
  end

  create_table 'vaga_habilidades', force: :cascade do |t|
    t.integer 'vaga_id'
    t.integer 'habilidade_id'
    t.integer 'nivel'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['habilidade_id'], name: 'index_vaga_habilidades_on_habilidade_id'
    t.index ['vaga_id'], name: 'index_vaga_habilidades_on_vaga_id'
  end

  create_table 'vagas', force: :cascade do |t|
    t.integer 'empresa_id'
    t.text 'descricao'
    t.datetime 'data_fim'
    t.datetime 'data_resposta'
    t.boolean 'validada'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'titulo'
    t.index ['empresa_id'], name: 'index_vagas_on_empresa_id'
  end

end
