Rails.application.routes.draw do
  post '/rydes/:id', to: 'rydes#add'
  post '/users/:id', to: 'rydes#finish'
  get '/rydes/active', to: 'rydes#active'
  resources :users 
  resources :rydes
  resources :sessions
  root 'sessions#index'
  get '/login', to: 'sessions#new'
end
