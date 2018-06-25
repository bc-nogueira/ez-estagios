class AlunoHabilidade < ApplicationRecord
  belongs_to :aluno
  belongs_to :habilidade
end
