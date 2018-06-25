class AlunoVagasController < ApplicationController
  before_action :set_aluno_vaga, only: [:show, :edit, :update, :destroy]

  # GET /aluno_vagas
  # GET /aluno_vagas.json
  def index
    @aluno_vagas = AlunoVaga.all
  end

  # GET /aluno_vagas/1
  # GET /aluno_vagas/1.json
  def show
  end

  # GET /aluno_vagas/new
  def new
    @aluno_vaga = AlunoVaga.new
  end

  # GET /aluno_vagas/1/edit
  def edit
  end

  # POST /aluno_vagas
  # POST /aluno_vagas.json
  def create
    @aluno_vaga = AlunoVaga.new(aluno_vaga_params)

    respond_to do |format|
      if @aluno_vaga.save
        format.html { redirect_to @aluno_vaga, notice: 'Aluno vaga was successfully created.' }
        format.json { render :show, status: :created, location: @aluno_vaga }
      else
        format.html { render :new }
        format.json { render json: @aluno_vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aluno_vagas/1
  # PATCH/PUT /aluno_vagas/1.json
  def update
    respond_to do |format|
      if @aluno_vaga.update(aluno_vaga_params)
        format.html { redirect_to @aluno_vaga, notice: 'Aluno vaga was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno_vaga }
      else
        format.html { render :edit }
        format.json { render json: @aluno_vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluno_vagas/1
  # DELETE /aluno_vagas/1.json
  def destroy
    @aluno_vaga.destroy
    respond_to do |format|
      format.html { redirect_to aluno_vagas_url, notice: 'Aluno vaga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno_vaga
      @aluno_vaga = AlunoVaga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_vaga_params
      params.require(:aluno_vaga).permit(:vaga_id, :aluno_id, :validado_coordenador, :validado_empresa)
    end
end
