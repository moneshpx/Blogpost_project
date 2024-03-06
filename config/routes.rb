Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'posts#index', as: :authenticated_root
  end

  root "posts#index"

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  resources :posts
  resources :socials
end