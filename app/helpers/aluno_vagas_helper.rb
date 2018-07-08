module AlunoVagasHelper
  def texto_situacao_aluno_vaga(aluno_vaga)
    return 'Liberação Pendente' if aluno_vaga.validado_coordenador.nil?
    return 'Rejeitado Coordenador' unless aluno_vaga.validado_coordenador
    return 'Aprovação Pendente' unless aluno_vaga.validado_empresa
    'Aprovado'
  end
end