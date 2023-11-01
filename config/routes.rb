Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "index", to: "pages#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :games
end
