Rails.application.routes.draw do
  resources :users do
    resources :rydes, shallow: true
  end
  resources :sessions, only: [:index, :new, :create, :destroy]
  root 'sessions#index'
end
