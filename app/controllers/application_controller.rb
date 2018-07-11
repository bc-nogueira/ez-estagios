class ApplicationController < ActionController::Base
  helper_method :current_aluno, :current_empresa

  protected
  def after_sign_in_path_for(resource)
    index_path
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

  def proibe_aluno
    return unless current_account.is_aluno?
    flash[:danger] = 'Você não tem permissão para acessar essa página'
    redirect_to root_path
  end

  def proibe_empresa
    return unless current_account.is_empresa?
    flash[:danger] = 'Você não tem permissão para acessar essa página'
    redirect_to root_path
  end

  def proibe_coordenador
    return unless current_account.is_coordenador?
    flash[:danger] = 'Você não tem permissão para acessar essa página'
    redirect_to root_path
  end
end
