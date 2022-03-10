Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :resolutions do
    collection do
      get 'search'
    end
  end
  resources :articles
end
