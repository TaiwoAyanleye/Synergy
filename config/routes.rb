Rails.application.routes.draw do
  get 'conversations/index'

  devise_for :users
  resources :conversations, only: [:index, :show, :destroy]
  # resources :messages
  root 'conversations#index'
end
