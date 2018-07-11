class VagaHabilidadesController < ApplicationController
  before_action :set_vaga_habilidade, only: [:show, :edit, :update, :destroy]

  def index
    @vaga_habilidades = VagaHabilidade.all
  end


  def show
  end

  def new
    @vaga_habilidade = VagaHabilidade.new
  end

  def edit
  end

  def create
    @vaga_habilidade = VagaHabilidade.new(vaga_habilidade_params)
    respond_to do |format|
      if @vaga_habilidade.save
        format.html { redirect_to vaga_path(id: @vaga_habilidade[:vaga_id]), notice: 'Nova Habilidade adicionada!' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @vaga_habilidade.update(vaga_habilidade_params)
        format.html { redirect_to @vaga_habilidade, notice: 'Vaga habilidade atualizada' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @vaga_habilidade.destroy
    respond_to do |format|
      format.html { redirect_to vaga_habilidades_url, notice: 'Vaga habilidade deletada.' }
    end
  end

  private

  def set_vaga_habilidade
    @vaga_habilidade = VagaHabilidade.find(params[:id])
  end

  def vaga_habilidade_params
    params.require(:vaga_habilidade).permit(:vaga_id, :habilidade_id, :nivel)
  end
end
