Rails.application.routes.draw do
  resources :users
  resources :retailers
  resources :beers
  resources :breweries
  resources :retailerbeers

  get '/login', to: "brewery_session#new", as: "login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
