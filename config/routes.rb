Rails.application.routes.draw do
  resources :aluno_horarios
  resources :aluno_habilidades
  resources :vaga_habilidades
  resources :aluno_vagas
  resources :vagas
  resources :habilidades
  root 'home#index'

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
