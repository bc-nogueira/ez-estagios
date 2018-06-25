Rails.application.routes.draw do
  root 'home#index'

  # Páginas que precisam de login para serem acessadas
  authenticate :account do
    resources :empresas, only: :index
  end

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
