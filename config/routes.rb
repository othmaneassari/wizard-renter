Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "index", to: "bookings#index"
  get "bookings/:id", to: "bookings#show"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :games
  resources :bookings
  resources :my_bookings
end
