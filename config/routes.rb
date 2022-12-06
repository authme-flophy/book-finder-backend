Rails.application.routes.draw do
  resources :bookcategories
  resources :books, only: [:index]
  resources :reviews, only: [:index]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
