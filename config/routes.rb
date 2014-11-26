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
    resources :categorias do
      collection do
        match 'search' => 'categorias#search', via: [:get, :post], as: :search
      end
    end
    resources :subcategorias do
      collection do
        match 'search' => 'subcategorias#search', via: [:get, :post], as: :search
      end
    end
    resources :articulos do
      collection do
        match 'search' => 'articulos#search', via: [:get, :post], as: :search
      end
    end
    resources :users do
      collection do
        match 'search' => 'users#search', via: [:get, :post], as: :search
      end
    end
  end

  root 'categorias#index'
end
