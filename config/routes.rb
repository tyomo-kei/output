Rails.application.routes.draw do
  devise_for :users 
  root to: 'users#index'
  resources :resolutions 
    
  resources :articles
  resources :users do
    collection do
      get 'search'
    end
  end
end
