Rails.application.routes.draw do  get 'toppage/index'
  root to: 'toppages#index'

  get 'toppages/index'

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'

  resources :tasks

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
