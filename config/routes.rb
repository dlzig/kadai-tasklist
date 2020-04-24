Rails.application.routes.draw do  get 'toppage/index'
  root to: 'toppages#index'

  # URLの見栄えを考慮して個別にルーティングを設定
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :tasks

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
