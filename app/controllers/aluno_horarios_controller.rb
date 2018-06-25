class AlunoHorariosController < ApplicationController
  before_action :set_aluno_horario, only: [:show, :edit, :update, :destroy]

  # GET /aluno_horarios
  # GET /aluno_horarios.json
  def index
    @aluno_horarios = AlunoHorario.all
  end

  # GET /aluno_horarios/1
  # GET /aluno_horarios/1.json
  def show
  end

  # GET /aluno_horarios/new
  def new
    @aluno_horario = AlunoHorario.new
  end

  # GET /aluno_horarios/1/edit
  def edit
  end

  # POST /aluno_horarios
  # POST /aluno_horarios.json
  def create
    @aluno_horario = AlunoHorario.new(aluno_horario_params)

    respond_to do |format|
      if @aluno_horario.save
        format.html { redirect_to @aluno_horario, notice: 'Aluno horario was successfully created.' }
        format.json { render :show, status: :created, location: @aluno_horario }
      else
        format.html { render :new }
        format.json { render json: @aluno_horario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aluno_horarios/1
  # PATCH/PUT /aluno_horarios/1.json
  def update
    respond_to do |format|
      if @aluno_horario.update(aluno_horario_params)
        format.html { redirect_to @aluno_horario, notice: 'Aluno horario was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno_horario }
      else
        format.html { render :edit }
        format.json { render json: @aluno_horario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluno_horarios/1
  # DELETE /aluno_horarios/1.json
  def destroy
    @aluno_horario.destroy
    respond_to do |format|
      format.html { redirect_to aluno_horarios_url, notice: 'Aluno horario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno_horario
      @aluno_horario = AlunoHorario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_horario_params
      params.require(:aluno_horario).permit(:aluno_id, :dia_semana, :hora_inicio, :hora_fim, :minuto_inicio, :minuto_fim)
    end
end
