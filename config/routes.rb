Rails.application.routes.draw do
  resources :users, except: [:index]
  resources :retailers
  resources :beers
  resources :breweries
  resources :retailer_beers


  get '/login', to: "sessions#new", as: "login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
