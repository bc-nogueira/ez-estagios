Rails.application.routes.draw do
  root 'home#index'

  # A maioria desses instrucao vai acacar indo pra dentro do autheticate
  resources :aluno_horarios
  resources :aluno_habilidades
  resources :vaga_habilidades
  resources :aluno_vagas
  resources :vagas
  resources :habilidades

  # Páginas que precisam de login para serem acessadas
  authenticate :account do
    resources :empresas, only: :index
    resources :instrucao, only: :index
  end

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
