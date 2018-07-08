class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :perfil, polymorphic: true, optional: true

  after_destroy do |account|
    account.perfil.destroy if account.perfil
  end

  def is_empresa?
    perfil_type == 'Empresa'
  end

  def is_coordenador?
    perfil.papel_type == 'Coordenador' if perfil_type == 'Pessoa'
  end

  def is_aluno?
    perfil.papel_type == 'Aluno' if perfil_type == 'Pessoa'
  end
end
