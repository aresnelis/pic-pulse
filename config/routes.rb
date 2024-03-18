Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users, only: [:show]
  resources :posts
  resources :comments, only: [:create, :destroy]
  post 'toggle_like', to: 'likes#toggle_like', as: :toggle_like
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
