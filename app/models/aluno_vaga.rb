class AlunoVaga < ApplicationRecord
  belongs_to :vaga
  belongs_to :aluno
end
