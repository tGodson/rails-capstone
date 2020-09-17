# frozen_string_literal: true

Rails.application.routes.draw do
  root 'transactions#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: %i[create new show]
  resources :groups, only: %i[index create new show]
  resources :transactions, only: %i[index create new show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
