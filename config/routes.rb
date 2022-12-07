Rails.application.routes.draw do
  resources :bookcategories, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :reviews, only: [:index, :show, :create, :destroy, :update]
  resources :users, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  get "/me", to: "users#show"
  post "/signup", to: "users#create"

  # root "articles#index"
end
