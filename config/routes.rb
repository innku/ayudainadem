Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  get 'admin', to: 'admin#index', as: :admin
  get 'examples', to: 'home#index', as: :examples

  resources :categorias, only: [:show, :index] do
    resources :subcategorias, only: [:show, :index]
  end

  resources :subcategorias, only: [:show, :index] do
    resources :articulos, only: [:show, :index]
  end

  namespace :admin do
    resources :categorias
    resources :subcategorias
    resources :articulos
    resources :users
  end

  root 'categorias#index'
end
