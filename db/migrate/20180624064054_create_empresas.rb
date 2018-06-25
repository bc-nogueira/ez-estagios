class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nome, null: false
      t.string :cnpj, null: false
      t.string :endereco, null: false
      t.boolean :validada

      t.timestamps
    end
  end
end
