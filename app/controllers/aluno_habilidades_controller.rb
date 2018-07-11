class AlunoHabilidadesController < ApplicationController
  before_action :set_aluno_habilidade, only: [:show, :edit, :update, :destroy]

  def index
    @aluno_habilidades = AlunoHabilidade.all
  end

  def show; end

  def new
    @aluno_habilidade = AlunoHabilidade.new
  end

  def edit; end

  def create
    @aluno_habilidade = AlunoHabilidade.new(aluno_habilidade_params)

    respond_to do |format|
      if @aluno_habilidade.save
        format.html { redirect_to aluno_path(id: @aluno_habilidade[:aluno_id]), notice: 'Nova Habilidade adicionada!'  }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @aluno_habilidade.update(aluno_habilidade_params)
        format.html { redirect_to @aluno_habilidade, notice: 'Aluno habilidade was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @aluno_habilidade.destroy
    respond_to do |format|
      format.html { redirect_to aluno_path(id: @aluno_habilidade[:aluno_id]), notice: 'Habilidade removida!' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno_habilidade
      @aluno_habilidade = AlunoHabilidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_habilidade_params
      params.require(:aluno_habilidade).permit(:aluno_id, :habilidade_id, :nivel)
    end
end
