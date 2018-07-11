class AlunoVagasController < ApplicationController
  before_action :set_aluno_vaga, only: [:show, :edit, :update, :destroy]

  before_action :proibe_aluno, only: [:new, :show, :edit]
  before_action :proibe_empresa, only: [:new, :show, :edit, :destroy]
  before_action :proibe_coordenador, only: [:new, :show, :edit, :destroy]
  
  def index
    if current_aluno
      return @aluno_vagas = AlunoVaga.por_aluno(current_aluno)
    end
    if current_empresa
      return @aluno_vagas = AlunoVaga.por_empresa(current_empresa)
    end
    @aluno_vagas = AlunoVaga.all
  end

  def create
    @aluno_vaga = AlunoVaga.new(aluno_vaga_params)
    salvou = @aluno_vaga.save
    flash[:success] = 'Você foi inscrito com sucesso' if salvou
    flash[:danger] = 'Ocorreu um erro na inscrição' unless salvou
    redirect_to vaga_path(id: @aluno_vaga.vaga.id)
  end

  def update
    if @aluno_vaga.update(aluno_vaga_params)
      flash[:success] = 'Ação efetuada com sucesso.'
    else
      flash[:danger] = 'Ocorreu um erro, por favor tente novamente.'
    end
    redirect_to aluno_vagas_path
  end

  def destroy
    @aluno_vaga.destroy
    if @aluno_vaga.persisted?
      flash[:success] = 'Candidatura cancelada com sucesso'
    end
    redirect_to aluno_vagas_path
  end

  private

  def set_aluno_vaga
    @aluno_vaga = AlunoVaga.find(params[:id])
  end

  def aluno_vaga_params
    params.require(:aluno_vaga)
      .permit(:vaga_id, :aluno_id, :validado_coordenador, :validado_empresa)
  end
end
