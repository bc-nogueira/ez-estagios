class CreateCoordenadores < ActiveRecord::Migration[5.2]
  def change
    create_table :coordenadores do |t|
      t.string :curso

      t.timestamps
    end
  end
end
