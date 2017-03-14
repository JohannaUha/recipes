Rails.application.routes.draw do
  resources :categories
  resources :recipes
  resources :users

  root'categories#index'
end
