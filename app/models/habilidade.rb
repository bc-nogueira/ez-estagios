class Habilidade < ApplicationRecord
  has_many :aluno_habilidades
  has_many :vaga_habilidades
end
