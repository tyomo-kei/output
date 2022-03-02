Rails.application.routes.draw do
  devise_for :users
  root to: 'errors#index'
  resources :errors, only: [:index, :new, :create, :destroy]
  resources :users, only: :show
end
