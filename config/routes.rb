Rails.application.routes.draw do
  resources :categories
  resources :recipes
  resources :users
  resource :session, only: [:new, :create, :destroy]

  get 'signin', to: 'sessions#new'
  get 'signout', to: 'sessions#destroy'

  root'categories#index'
end
