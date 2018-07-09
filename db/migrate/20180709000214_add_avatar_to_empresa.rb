class AddAvatarToEmpresa < ActiveRecord::Migration[5.2]
  def change
    add_column :empresas, :avatar, :string
  end
end
