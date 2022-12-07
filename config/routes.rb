Rails.application.routes.draw do
  resources :bookcategories
  resources :books, only: [:index]
  resources :reviews, only: [:index]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  post '/signup', to: "users#new", as: 'signup'
  get '/signup', to: "users#new"
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#verify'
  get '/logout', to: 'sessions#logout', as: 'logout'

  root 'sessions#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
