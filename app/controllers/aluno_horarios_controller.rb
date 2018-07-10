class AlunoHorariosController < ApplicationController
  before_action :set_aluno_horario, only: [:show, :edit, :update, :destroy]

  def index
    @aluno_horarios = AlunoHorario.all
  end

  def show; end

  def new
    @aluno_horario = AlunoHorario.new
  end

  def edit; end

  def create
    @aluno_horario = AlunoHorario.new(aluno_horario_params)
    if @aluno_horario.save
      flash[:success] = 'Aluno horario was successfully created'
      return redirect_to @aluno_horario
    end
    render :new
  end

  def update
    if @aluno_horario.update(aluno_horario_params)
      flash[:success] = 'Aluno horario was successfully updated.'
      return redirect_to @aluno_horario
    end
    render :edit
  end

  def destroy
    @aluno_horario.destroy
    flash[:success] = 'Aluno horario was successfully destroyed.'
    redirect_to aluno_horarios_url
  end

  private

  def set_aluno_horario
    @aluno_horario = AlunoHorario.find(params[:id])
  end

  def aluno_horario_params
    params.require(:aluno_horario)
      .permit(:aluno_id, :dia_semana, :hora_inicio, :hora_fim, :minuto_inicio,
              :minuto_fim)
  end
end
