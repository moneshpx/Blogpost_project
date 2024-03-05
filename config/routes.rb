Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'posts#index', as: :authenticated_root
  end

  root "posts#index"

  resources :posts
  resources :socials
end