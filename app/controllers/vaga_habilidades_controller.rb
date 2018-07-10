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

  # PATCH/PUT /vaga_habilidades/1
  # PATCH/PUT /vaga_habilidades/1.json
  def update
    respond_to do |format|
      if @vaga_habilidade.update(vaga_habilidade_params)
        format.html { redirect_to @vaga_habilidade, notice: 'Vaga habilidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaga_habilidade }
      else
        format.html { render :edit }
        format.json { render json: @vaga_habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaga_habilidades/1
  # DELETE /vaga_habilidades/1.json
  def destroy
    @vaga_habilidade.destroy
    respond_to do |format|
      format.html { redirect_to vaga_habilidades_url, notice: 'Vaga habilidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaga_habilidade
      @vaga_habilidade = VagaHabilidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaga_habilidade_params
      params.require(:vaga_habilidade).permit(:vaga_id, :habilidade_id, :nivel)
    end
end
