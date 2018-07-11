class AlunoHabilidade < ApplicationRecord
  belongs_to :aluno
  belongs_to :habilidade

  delegate :nome, to: :habilidade
  delegate :descricao, to: :habilidade

  enum nivel: { basico: 0, intermediario: 1, avancado: 2 }

  validates :habilidade, uniqueness: { scope: :aluno }
end
