class Vaga < ApplicationRecord
  belongs_to :empresa
  has_many :vaga_habilidades

  scope :por_empresa, ->(id) { where(empresa_id: id) }
  scope :validadas, -> do
    joins(:empresa).where(validada: true, empresas: { validada: true })
  end

  delegate :nome, to: :empresa, prefix: true
  delegate :avatar, to: :empresa, prefix: true
end
