Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, only: [:index, :update, :edit] do
    resources :articles, only: [:index, :new, :create, :edit, :update]
  end
end
