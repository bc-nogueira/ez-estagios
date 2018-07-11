class HabilidadesController < ApplicationController
  before_action :set_habilidade, only: [:show, :edit, :update, :destroy]

  def index
    @habilidades = Habilidade.all
  end

  def show; end

  def new
    @habilidade = Habilidade.new
  end

  def edit; end

  def create
    @habilidade = Habilidade.new(habilidade_params)

    respond_to do |format|
      if @habilidade.save
        format.html { redirect_to @habilidade, notice: 'Habilidade criada' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @habilidade.update(habilidade_params)
        format.html { redirect_to @habilidade, notice: 'Habilidade atualizada.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @habilidade.destroy
    respond_to do |format|
      format.html { redirect_to habilidades_url, notice: 'Habilidade deletada' }
    end
  end

  private

  def set_habilidade
    @habilidade = Habilidade.find(params[:id])
  end

  def habilidade_params
    params.require(:habilidade).permit(:nome, :descricao)
  end
end
