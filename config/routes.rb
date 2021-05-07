Rails.application.routes.draw do
  
  get 'profile/liked'
  get 'profile/reviewed'
  devise_for :users
  resources :meals do
  	#search will apply to more than one restaurant
  	collection do
      get 'search'
    end
  	resources :reviews, except: [:show, :index]
  end
  
  get 'pages/about'

  get 'pages/contact'

  root 'meals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
