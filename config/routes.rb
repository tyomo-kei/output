Rails.application.routes.draw do
  devise_for :users
  root to: 'resolutions#index'
  resources :resolutions do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
