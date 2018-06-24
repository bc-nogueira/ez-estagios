class Pessoa < ApplicationRecord
  has_one :account, as: :perfil

  belongs_to :papel, polymorphic: true
end
