Rails.application.routes.draw do
  resources :beer_tags, only: [:new, :create]
  resources :tags, only:[:new, :create]
  resources :users, except: [:index]
  resources :favorite_beers, only:[:new, :create, :delete, :show]
  resources :retailers
  resources :beers
  resources :breweries
  resources :retailer_beers, only:[:new, :create, :edit, :update]


  get '/login', to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
