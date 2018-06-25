Rails.application.routes.draw do
  resources :aluno_horarios
  resources :aluno_habilidades
  resources :vaga_habilidades
  resources :aluno_vagas
  resources :vagas
  resources :habilidades
  root 'home#index'

  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
