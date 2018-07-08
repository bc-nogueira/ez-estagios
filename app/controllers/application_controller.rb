class ApplicationController < ActionController::Base
  protected
  def after_sign_in_path_for(resource)
    instrucao_index_path
    # request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  def current_aluno
    return if current_account.is_empresa?
    papel = current_account.perfil.papel
    return papel if papel.is_a? Aluno
    nil
  end

  def current_empresa
    return current_account.perfil if current_account.is_empresa?
    nil
  end
end
