Rails.application.routes.draw do
  get 'pages/home'
  devise_for :views
  devise_for :users
  resources :users
  root 'pages#home'
  resources :events
end
