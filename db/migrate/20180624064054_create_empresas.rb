class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nome, null: false
      t.string :cnpj, null: false
      t.string :endereco, null: false
      t.boolean :validada, null: false, default: false

      t.timestamps
    end
  end
end
