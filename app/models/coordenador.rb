class Coordenador < ApplicationRecord
  has_one :pessoa, as: :papel
end
