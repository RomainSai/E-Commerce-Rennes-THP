Rails.application.routes.draw do

  get 'users/show'
  get 'session/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges

  resources :users
  root to: 'items#index'
  get "/about", to: 'static_pages#about'
  get "/contact", to:'static_pages#contact'

  resources :items
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  resources :orders, only: [:show, :create] do
    resources :charges, only: [:new, :create]
  end

end
