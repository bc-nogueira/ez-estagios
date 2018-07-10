class VagasController < ApplicationController
  before_action :set_vaga, only: [:show, :edit, :update, :destroy,
                                  :update_validacao]

  def index
    if current_account.is_empresa?
      return @vagas = Vaga.por_empresa(current_account.perfil_id)
    end
    return @vagas = Vaga.validadas if current_account.is_aluno?
    @vagas = Vaga.all
  end

  def show
  end

  def new
    @vaga = Vaga.new
  end

  def edit; end

  def create
    @vaga = Vaga.new(vaga_params)

    respond_to do |format|
      if @vaga.save
        format.html { redirect_to @vaga, notice: 'Vaga foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @vaga }
      else
        format.html { render :new }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vaga.update(vaga_params)
        format.html { redirect_to @vaga, notice: 'Vaga foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @vaga }
      else
        format.html { render :edit }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_validacao
    salvou = @vaga.update(vaga_params)
    flash[:success] = 'Vaga atualizada com sucesso' if salvou
    flash[:danger] = 'Ocorreu um erro ao atualizar a vaga' unless salvou
    redirect_to vagas_path
  end

  def destroy
    @vaga.destroy
    respond_to do |format|
      format.html { redirect_to vagas_url, notice: 'Vaga foi excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_vaga
      @vaga = Vaga.find(params[:id])
    end

    def vaga_params
      params.require(:vaga).permit(:titulo, :validada, :descricao,
                                   :data_fim, :data_resposta)
          .merge(empresa_id: current_account.perfil.id)
    end
end
