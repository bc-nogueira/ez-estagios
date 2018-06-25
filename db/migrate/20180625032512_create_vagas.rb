class CreateVagas < ActiveRecord::Migration[5.2]
  def change
    create_table :vagas do |t|
      t.references :empresa, foreign_key: true
      t.text :descricao
      t.datetime :data_fim
      t.datetime :data_resposta
      t.boolean :validada

      t.timestamps
    end
  end
end
