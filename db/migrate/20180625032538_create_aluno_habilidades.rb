class CreateAlunoHabilidades < ActiveRecord::Migration[5.2]
  def change
    create_table :aluno_habilidades do |t|
      t.references :aluno, foreign_key: true
      t.references :habilidade, foreign_key: true
      t.integer :nivel

      t.timestamps
    end
  end
end
