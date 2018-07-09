module RegistrationHelper
  def is_criacao_aluno?
    params[:account].nil? || params[:account][:aluno].present?
  end
end
