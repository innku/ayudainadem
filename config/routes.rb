Rails.application.routes.draw do
  resources :subcategorias

  resources :categorias, only: [:show, :index]
  resources :admin, only: [:index]

  namespace :admin do
    resources :categorias
  end

  devise_for :users

  get 'admin', to: 'admin#index', as: :admin

  get 'examples', to: 'home#index', as: :examples

  root 'categorias#index'
end
