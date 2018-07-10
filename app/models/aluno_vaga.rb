class AlunoVaga < ApplicationRecord
  belongs_to :vaga
  belongs_to :aluno

  scope :por_aluno, ->(aluno)  { where aluno: aluno }
  scope :pendentes_coordenador, -> { where validado_coordenador: nil }
  scope :por_empresa, ->(empresa)  do
    joins(:vaga).where(vagas: { empresa_id: empresa.id })
  end

  def validado_coordenador?
    return false if validado_coordenador.nil?
    validado_coordenador
  end
end
