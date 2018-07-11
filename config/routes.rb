Rails.application.routes.draw do

  # Páginas que precisam de login para serem acessadas
  authenticate :account do
    root 'home#index'
    resources :aluno_horarios
    resources :aluno_habilidades, only: [:create, :destroy]
    resources :vaga_habilidades, only: [:create, :destroy]
    resources :aluno_vagas, only: [:index, :create, :update, :destroy]
    resources :habilidades
    resources :instrucao, only: :index
    resources :vagas do
      patch 'update_validacao', on: :member
    end

    resources :empresas, only: [:index, :show, :update, :edit] do
      patch 'update_validacao', on: :member
    end

    resources :alunos, only: [:index, :show, :update, :edit] do
      patch 'update_validacao', on: :member
    end

    resources :instrucao, only: :index
  end

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
