class Empresa < ApplicationRecord
  has_many :vagas
  has_one :account, as: :perfil, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  validates :nome, :cnpj, :endereco, presence: true
end
