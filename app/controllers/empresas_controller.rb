class EmpresasController < ApplicationController
  before_action :set_empresa, only: :update_validacao

  def index
    @empresas = Empresa.all
  end

  def update_validacao
    @empresa.update_attributes(validada: params[:empresa][:status])
    redirect_to empresas_path
  end

  def aprovar

  end

  def reprovar

  end

  private

  def set_empresa
    @empresa = Empresa.find(params[:id])
  end
end
