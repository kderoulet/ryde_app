Rails.application.routes.draw do
  post '/rydes/active', to: 'rydes#finish'  
  post '/rydes/:id', to: 'rydes#add'
  get '/rydes/active', to: 'rydes#active'
  resources :users 
  resources :rydes
  resources :sessions
  root 'sessions#index'
  get '/login', to: 'sessions#new'
end
