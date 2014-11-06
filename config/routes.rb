Rails.application.routes.draw do
  resources :categorias, only: [:show, :index]

  namespace :admin do
    resources :categorias
  end

  devise_for :users
  root 'home#index'
end
