Rails.application.routes.draw do
  root 'home#index'

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }
end
