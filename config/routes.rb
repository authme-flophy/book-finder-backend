Rails.application.routes.draw do
  resources :bookcategories
  resources :books
  resources :reviews, only: [:index]
  resources :users,  only: [:index]
  post "/signin", to: "sessions#create_session"
  post "/signup", to: "users#create"
  #get "signout" => "sessions#destroy"
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
