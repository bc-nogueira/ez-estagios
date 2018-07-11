class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :update_validacao]
  before_action :proibe_aluno, only: [:index, :edit, :update, :update_validacao]
  before_action :proibe_empresa, only: [:index, :update_validacao]
  before_action :proibe_coordenador, only: [:edit, :update]

  def index
    @empresas = Empresa.all
  end

  def show; end

  def edit; end

  def update
    if @empresa.update(empresa_params)
      flash[:success] = 'Seu perfil foi atualizado!'
      return redirect_to @empresa
    end
    render :edit
  end

  def update_validacao
    @empresa.update(validada: params[:empresa][:status])
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
