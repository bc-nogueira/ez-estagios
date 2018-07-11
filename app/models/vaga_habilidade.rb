class VagaHabilidade < ApplicationRecord
  belongs_to :vaga
  belongs_to :habilidade

  delegate :nome, to: :habilidade
  delegate :descricao, to: :habilidade

  enum nivel: { basico: 0, intermediario: 1, avancado: 2 }
end
