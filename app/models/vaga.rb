class Vaga < ApplicationRecord
  belongs_to :empresa

  scope :por_empresa, ->(id) { where(empresa_id: id) }
end
