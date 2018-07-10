module VagasHelper
  def texto_situacao_vaga(vaga)
    return 'Pendente' if @vaga.validada.nil?
    return 'Aprovada' if @vaga.validada
    'Rejeitada'
  end
end
