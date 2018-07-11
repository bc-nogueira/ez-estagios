class VagasController < ApplicationController
  before_action :set_vaga, only: [:show, :edit, :update, :destroy,
                                  :update_validacao]
  before_action :proibe_aluno, only: [:edit, :update, :update_validacao]
  before_action :proibe_empresa, only: [:update_validacao]
  before_action :proibe_coordenador, only: [:edit, :update, :destroy]
  
  has_scope :por_empresa
  has_scope :match_habilidades

  def index
    index_as_empresa
    index_as_aluno
    index_as_coordenador
  end

  def show; end

  def new
    @vaga = Vaga.new
  end

  def edit; end

  def create
    @vaga = Vaga.new(vaga_params.merge(empresa_id: current_account.perfil_id))
    if @vaga.save
      flash[:success] = 'Vaga foi criada com sucesso.'
      return redirect_to @vaga
    end
    render :new
  end

  def update
    if @vaga.update(vaga_params)
      flash[:succes] = 'Vaga foi atualizada com sucesso.'
      return redirect_to @vaga
    end
    render :edit
  end

  def update_validacao
    salvou = @vaga.update(vaga_params)
    flash[:success] = 'Vaga atualizada com sucesso' if salvou
    flash[:danger] = 'Ocorreu um erro ao atualizar a vaga' unless salvou
    redirect_to vagas_path
  end

  def destroy
    @vaga.destroy
    flash[:success] = 'Vaga foi excluída com sucesso.'
    redirect_to vagas_url
  end

  private

  def index_as_aluno
    return unless current_account.is_aluno?
    @vagas = apply_scopes(Vaga).validadas.
      paginate(:page => params[:page], :per_page => 3)
  end

  def index_as_empresa
    return unless current_account.is_empresa?
    @vagas = Vaga.por_empresa(current_account.perfil_id)
                 .paginate(:page => params[:page], :per_page => 3)
  end

  def index_as_coordenador
    return unless current_account.is_coordenador?
    @vagas = Vaga.all
  end

  def set_vaga
    @vaga = Vaga.find(params[:id])
  end

  def vaga_params
    params.require(:vaga).permit(:titulo, :validada, :descricao,
                                 :data_fim, :data_resposta)
  end
end
