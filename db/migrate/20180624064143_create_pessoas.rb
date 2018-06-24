class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.references :papel, polymorphic: true, index: true

      t.timestamps
    end
  end
end
