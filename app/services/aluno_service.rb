class AlunoService
  def initialize(params)
    @pessoa = params.require(:pessoa).permit(:nome, :cpf)
    @aluno =  params.require(:aluno).permit([:matricula, :periodo])
  end

  def create_aluno      
    novo_aluno = Pessoa.create(@pessoa)
    novo_aluno.update_attributes(papel: Aluno.create(@aluno))
    novo_aluno
  end

end
