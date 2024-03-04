Rails.application.routes.draw do
  resources :posts
  resources :users, only: [:show]
  devise_for :users
  root 'home#index'
  post 'toggle_like', to: 'likes#toggle_like', as: :toggle_like
  resources :comments, only: [:create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
