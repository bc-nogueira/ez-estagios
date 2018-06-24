class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj
      t.string :endereco
      t.boolean :validada

      t.timestamps
    end
  end
end
