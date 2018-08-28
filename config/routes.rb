Rails.application.routes.draw do

  get 'session/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges

  root to: 'items#index', as: 'home'
  resources :items
  devise_for :users

  resources :orders, only: [:show, :create] do
    resources :charges, only: [:new, :create]
  end

end
