class Aluno < ApplicationRecord
  has_many :aluno_habilidades

  has_one :pessoa, as: :papel
end
