Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  mount Ckeditor::Engine => '/ckeditor'

  get 'admin', to: 'admin#index', as: :admin
  get 'examples', to: 'home#index', as: :examples

  resources :categorias, only: [:index, :show] do
    resources :subcategorias, only: [:index, :show]
  end

  resources :subcategorias, only: [:index, :show] do
    resources :articulos, only: [:index, :show]
  end

  namespace :admin do
    resources :categorias
    resources :subcategorias
    resources :articulos
    resources :users
  end

  root 'categorias#index'
end
