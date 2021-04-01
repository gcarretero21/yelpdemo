Rails.application.routes.draw do
  devise_for :users
  resources :meals
  resources :restaurants
  get 'pages/about'
  get 'pages/contact'

  root 'meals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
