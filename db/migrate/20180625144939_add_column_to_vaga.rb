class AddColumnToVaga < ActiveRecord::Migration[5.2]
  def change
    add_column :vagas, :titulo, :string
  end
end
