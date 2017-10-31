Rails.application.routes.draw do
  resources :users 
  resources :rydes
  resources :sessions
  root 'sessions#index'
  get '/login', to: 'sessions#new'
end
