Rails.application.routes.draw do
  resources :categorias

  devise_for :users
  root 'home#index'
end
