Rails.application.routes.draw do
  resources :beer_tags, only: [:new, :create, :delete]
  resources :tags, only:[:new, :create]
  resources :users, except: [:index]
  resources :favorite_beers, only:[:new, :create]
  resources :retailers
  resources :beers
  resources :breweries
  resources :retailer_beers, only:[:new, :create]


  get '/login', to: "sessions#new", as: "login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
