Rails.application.routes.draw do

  get 'session/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges

  root to: 'session#login'
  resources :items
  devise_for :users

end
