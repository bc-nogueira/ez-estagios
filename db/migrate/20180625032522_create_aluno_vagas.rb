class CreateAlunoVagas < ActiveRecord::Migration[5.2]
  def change
    create_table :aluno_vagas do |t|
      t.references :vaga, foreign_key: true
      t.references :aluno, foreign_key: true
      t.boolean :validado_coordenador
      t.boolean :validado_empresa

      t.timestamps
    end
  end
end
