class Empresa < ApplicationRecord
  has_many :vagas
  has_one :account, as: :perfil, dependent: :destroy

  validates :nome, :cnpj, :endereco, presence: true
end
