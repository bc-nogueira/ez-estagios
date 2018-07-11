class Vaga < ApplicationRecord
  belongs_to :empresa
  has_many :vaga_habilidades
  has_many :aluno_vagas
  has_many :habilidades, through: :vaga_habilidades
  delegate :nome, to: :empresa, prefix: true
  delegate :avatar, to: :empresa, prefix: true

  scope :por_empresa, ->(id) { where(empresa_id: id) }
  scope :match_habilidades, ->(aluno) {
    joins(habilidades: :aluno_habilidades)
    .where(aluno_habilidades: { aluno_id: aluno })
    .distinct
  }

  scope :validadas, -> do
    joins(:empresa).where(validada: true, empresas: { validada: true })
  end

  self.per_page = 3

  def disponivel?
    validada? && data_fim > Date.today
  end
end
