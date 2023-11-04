Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :games
  get "new", to: "games#new", as: :new
  get "index", to: "games#index", as: :index
  resources :bookings
end
