Rails.application.routes.draw do
  root to: 'users#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
