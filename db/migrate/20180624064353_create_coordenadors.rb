class CreateCoordenadors < ActiveRecord::Migration[5.2]
  def change
    create_table :coordenadors do |t|
      t.string :curso

      t.timestamps
    end
  end
end
