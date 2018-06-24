class Empresa < ApplicationRecord
  has_one :account, as: :perfil
end
