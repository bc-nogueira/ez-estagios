class Vaga < ApplicationRecord
  belongs_to :empresa

  scope :por_empresa, ->(id) { where(empresa_id: id) }
  scope :validadas, -> { where(validada: true) }

  delegate :nome, to: :empresa, prefix: true
  delegate :avatar, to: :empresa, prefix: true
end
