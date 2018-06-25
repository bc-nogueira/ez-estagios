class CreateAlunoHorarios < ActiveRecord::Migration[5.2]
  def change
    create_table :aluno_horarios do |t|
      t.references :aluno, foreign_key: true
      t.integer :dia_semana
      t.integer :hora_inicio
      t.integer :hora_fim
      t.integer :minuto_inicio
      t.integer :minuto_fim

      t.timestamps
    end
  end
end
