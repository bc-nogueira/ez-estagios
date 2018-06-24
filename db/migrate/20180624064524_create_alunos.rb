class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.number :periodo
      t.boolean :validado

      t.timestamps
    end
  end
end
