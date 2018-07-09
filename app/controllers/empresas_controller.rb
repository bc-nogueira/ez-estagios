class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :update_validacao]

  def index
    @empresas = Empresa.all
  end

  def show; end

  def edit  
  end

  def update
    binding.pry
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Seu perfil foi atualizado!' }
      else
        format.html { render :edit }
      end
    end
  end

  def update_validacao
    @empresa.update_attributes(validada: params[:empresa][:status])
    redirect_to empresas_path
  end

  private

  def set_empresa
    @empresa = Empresa.find(params[:id])
  end

  def empresa_params
    params.require(:empresa).permit(:avatar, :nome, :endereco)
  end
end
