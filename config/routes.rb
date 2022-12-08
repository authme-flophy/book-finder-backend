Rails.application.routes.draw do
  resources :bookcategories, only: [:index, :show, :create, :destroy]
  resources :books, only: [:index, :show, :create, :update, :destroy]
  resources :reviews, only: [:index, :create, :destroy]
  resources :users, only: [:index, :create, :show, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
