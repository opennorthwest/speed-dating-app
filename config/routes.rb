Rails.application.routes.draw do
  resources :hosts
  resources :organizations
  get 'pages/home'
  devise_for :views
  devise_for :users
  resources :users
  root 'pages#home'
  resources :events
end
