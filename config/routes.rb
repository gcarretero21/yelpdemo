Rails.application.routes.draw do
  
  devise_for :users
  resources :meals do
  	resources :reviews, except: [:show, :index]
  end
  
  get 'pages/about'

  get 'pages/contact'

  root 'meals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
