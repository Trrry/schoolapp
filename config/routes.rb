Rails.application.routes.draw do

  root 'bids#index'
  resources :users
  get 'users/new' => 'users#new', as: :newuser
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit', as: :useredit
  put 'users/:id' => 'users#put'
  get 'users/:id' => 'users#show', as: :profile
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', as: :logout
end
