Rails.application.routes.draw do
  devise_for :users
  root 'article#index'
  resources :users, only: [:index, :update, :edit]
  resources :articles, only: [:index, :new, :create, :edit, :update]
end
