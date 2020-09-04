Rails.application.routes.draw do
  root 'transactions#index'
  get 'groups/index'
  get 'sessions/index'
  get 'users/new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :groups
  resources :transactions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
