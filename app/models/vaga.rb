class Vaga < ApplicationRecord
  belongs_to :empresa
  has_many :vaga_habilidades
  has_many :aluno_vagas
  delegate :nome, to: :empresa, prefix: true
  delegate :avatar, to: :empresa, prefix: true

  scope :por_empresa, ->(id) { where(empresa_id: id) }
  scope :match_habilidades, ->(aluno) {
    joins(:vaga_habilidades)
    .joins("LEFT JOIN aluno_habilidades on vaga_habilidades.habilidade_id = aluno_habilidades.habilidade_id")
    .where(aluno_habilidades: {aluno_id: aluno})
  }
  scope :validadas, -> do
    joins(:empresa).where(validada: true, empresas: { validada: true })
  end

  self.per_page = 3

  def disponivel?
    validada? && data_fim > Date.today
  end
end
