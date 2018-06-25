class Empresa < ApplicationRecord
  has_one :account, as: :perfil, dependent: :destroy

  validates :nome, :cnpj, :endereco, presence: true
end
