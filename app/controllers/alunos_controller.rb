class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :update_validacao]

  def index
    @alunos = Aluno.all
  end

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: 'Seu perfil foi atualizado!' }
      else
        format.html { render :edit }
      end
    end
  end

  def update_validacao
    @aluno.update(validado: params[:aluno][:status])
    redirect_to alunos_path
  end

  private

  def set_aluno
    @aluno = Aluno.find(params[:id])
  end

  def aluno_params
    params.require(:aluno).permit(:matricula, :periodo)
  end
end
