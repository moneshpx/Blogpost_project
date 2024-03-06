Rails.application.routes.draw do
  root "posts#index"
  devise_for :users
  authenticated :user do
    root to: 'posts#index', as: :authenticated_root
  end
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/:provider', to: 'sessions#create', as: :authenticate
  
  resources :posts
  resources :socials
end