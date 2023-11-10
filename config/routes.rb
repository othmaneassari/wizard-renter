Rails.application.routes.draw do

  root to: "pages#home"
  resources :games
  get "new", to: "games#new", as: :new
  get "index", to: "games#index", as: :index
  resources :bookings
  get "new", to: "bookings#new", as: :new
  get "index", to: "bookings#index", as: :index


end
