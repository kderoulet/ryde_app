Rails.application.routes.draw do
  post '/rydes/:id', to: 'rydes#add'
  post '/users/:id', to: 'rydes#finish'
  resources :users 
  resources :rydes
  resources :sessions
  root 'sessions#index'
  get '/login', to: 'sessions#new'
end
