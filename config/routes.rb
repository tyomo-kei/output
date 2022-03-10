Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :resolutions do
    collection do
      get 'search'
    end
  end
  resources :articles, only: :index
  resources :users, only: :show
end
