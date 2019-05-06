Rails.application.routes.draw do
  resources :retailers
  resources :beers
  resources :breweries
  resources :retailerbeers, only: [:show, :new, :create, :edit, :update]

  get '/login', to: "brewery_session#new", as: "login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
