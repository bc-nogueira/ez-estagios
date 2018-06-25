class Empresa < ApplicationRecord
  has_one :account, as: :perfil
  has_many :vagas
end
