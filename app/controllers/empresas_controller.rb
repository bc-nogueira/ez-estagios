class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :update_validacao]

  def index
    @empresas = Empresa.all
  end

  def show; end

  def update_validacao
    @empresa.update_attributes(validada: params[:empresa][:status])
    redirect_to empresas_path
  end

  private

  def set_empresa
    @empresa = Empresa.find(params[:id])
  end
end
