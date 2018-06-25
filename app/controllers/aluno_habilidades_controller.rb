class AlunoHabilidadesController < ApplicationController
  before_action :set_aluno_habilidade, only: [:show, :edit, :update, :destroy]

  # GET /aluno_habilidades
  # GET /aluno_habilidades.json
  def index
    @aluno_habilidades = AlunoHabilidade.all
  end

  # GET /aluno_habilidades/1
  # GET /aluno_habilidades/1.json
  def show
  end

  # GET /aluno_habilidades/new
  def new
    @aluno_habilidade = AlunoHabilidade.new
  end

  # GET /aluno_habilidades/1/edit
  def edit
  end

  # POST /aluno_habilidades
  # POST /aluno_habilidades.json
  def create
    @aluno_habilidade = AlunoHabilidade.new(aluno_habilidade_params)

    respond_to do |format|
      if @aluno_habilidade.save
        format.html { redirect_to @aluno_habilidade, notice: 'Aluno habilidade was successfully created.' }
        format.json { render :show, status: :created, location: @aluno_habilidade }
      else
        format.html { render :new }
        format.json { render json: @aluno_habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aluno_habilidades/1
  # PATCH/PUT /aluno_habilidades/1.json
  def update
    respond_to do |format|
      if @aluno_habilidade.update(aluno_habilidade_params)
        format.html { redirect_to @aluno_habilidade, notice: 'Aluno habilidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno_habilidade }
      else
        format.html { render :edit }
        format.json { render json: @aluno_habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluno_habilidades/1
  # DELETE /aluno_habilidades/1.json
  def destroy
    @aluno_habilidade.destroy
    respond_to do |format|
      format.html { redirect_to aluno_habilidades_url, notice: 'Aluno habilidade was successfully destroyed.' }
      format.json { head :no_content }
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
