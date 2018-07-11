class AlunoVaga < ApplicationRecord
  belongs_to :vaga
  belongs_to :aluno

  validates :aluno, uniqueness: { scope: :vaga }

  scope :por_aluno, ->(aluno)  { where aluno: aluno }
  scope :por_vaga, ->(vaga)  { where vaga: vaga }
  scope :pendentes_coordenador, -> { where validado_coordenador: nil }
  scope :pendentes, -> do
    where('aluno_vagas.validado_coordenador is null '\
          'OR aluno_vagas.validado_empresa is null')
  end

  scope :por_empresa, ->(empresa)  do
    joins(:vaga).where(vagas: { empresa_id: empresa.id })
  end

  def validado_coordenador?
    return false if validado_coordenador.nil?
    validado_coordenador
  end

  def finalizado?
    !validado_coordenador.nil? && !validado_empresa.nil?
  end
end
