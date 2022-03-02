Rails.application.routes.draw do
  root to: 'errors#index'
  resources :errors, only: [:index, :new, :create, :destroy]
end
