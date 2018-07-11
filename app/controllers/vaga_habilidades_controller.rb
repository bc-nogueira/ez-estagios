class VagaHabilidadesController < ApplicationController
  before_action :set_vaga_habilidade, only: :destroy
  before_action :proibe_aluno, only: [:index, :new, :update]
  before_action :proibe_empresa, only: [:index, :new, :update]
  before_action :proibe_coordenador, only: [:index, :new, :create, :destroy]

  def create
    @vaga_habilidade = VagaHabilidade.new(vaga_habilidade_params)
    salvou =  @vaga_habilidade.save
    flash[:success] = 'Nova Habilidade adicionada' if salvou
    flash[:danger] = 'Houve um erro ao adicionar a habilidade' unless salvou
    redirect_to vaga_path(id: @vaga_habilidade[:vaga_id])
  end

  def destroy
    @vaga_habilidade.destroy
    flash[:success] = 'Habilidade removida!'
    redirect_to vaga_path(id: @vaga_habilidade[:vaga_id])
  end

  private

  def set_vaga_habilidade
    @vaga_habilidade = VagaHabilidade.find(params[:id])
  end

  def vaga_habilidade_params
    params.require(:vaga_habilidade).permit(:vaga_id, :habilidade_id, :nivel)
  end
end
