Rails.application.routes.draw do
  resources :aluno_horarios
  resources :aluno_habilidades
  resources :vaga_habilidades
  resources :aluno_vagas
  resources :vagas
  resources :habilidades
  root 'home#index'

  # Páginas que precisam de login para serem acessadas
  authenticate :account do
    resources :empresas, only: :index
  end

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
