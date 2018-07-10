Rails.application.routes.draw do
  root 'home#index'

  # A maioria desses instrucao vai acacar indo pra dentro do autheticate
  resources :aluno_horarios
  resources :aluno_habilidades
  resources :vaga_habilidades
  resources :aluno_vagas
  resources :habilidades

  # Páginas que precisam de login para serem acessadas
  authenticate :account do
    resources :instrucao, only: :index
    resources :vagas do
      patch 'update_validacao', on: :member
    end

    resources :empresas, only: [:index, :show, :update, :edit] do
      patch 'update_validacao', on: :member
    end
  end

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
