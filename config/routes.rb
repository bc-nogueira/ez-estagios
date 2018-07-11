Rails.application.routes.draw do
  devise_for :accounts,
             controllers: { registrations: 'accounts/registrations' }

  root to: redirect('/accounts/sign_in')

  authenticated :account do
    root to: redirect('/index'), as: :authenticated_root
  end

  # Páginas que precisam de login para serem acessadas
  authenticate :account do
    get 'index', to: 'home#index'

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
end
