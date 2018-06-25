class CreateVagaHabilidades < ActiveRecord::Migration[5.2]
  def change
    create_table :vaga_habilidades do |t|
      t.references :vaga, foreign_key: true
      t.references :habilidade, foreign_key: true
      t.integer :nivel

      t.timestamps
    end
  end
end
