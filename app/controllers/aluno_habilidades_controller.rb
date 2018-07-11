class AlunoHabilidadesController < ApplicationController
  before_action :set_aluno_habilidade, only: :destroy
  before_action :proibe_aluno, only: [:index, :new, :update]
  before_action :proibe_empresa, only: [:index, :new, :update]
  before_action :proibe_coordenador, only: [:index, :new, :create, :destroy]

  def create
    @aluno_habilidade = AlunoHabilidade.new(aluno_habilidade_params)
    salvou =  @aluno_habilidade.save
    flash[:success] = 'Nova Habilidade adicionada' if salvou
    flash[:danger] = 'Houve um erro ao adicionar a habilidade' unless salvou
    redirect_to aluno_path(id: @aluno_habilidade[:aluno_id])
  end

  def destroy
    @aluno_habilidade.destroy
    flash[:success] = 'Habilidade removida!'
    redirect_to aluno_path(id: @aluno_habilidade[:aluno_id])
  end

  private
    def set_aluno_habilidade
      @aluno_habilidade = AlunoHabilidade.find(params[:id])
    end

    def aluno_habilidade_params
      params.require(:aluno_habilidade).permit(:aluno_id, :habilidade_id,
                                               :nivel)
    end
end
