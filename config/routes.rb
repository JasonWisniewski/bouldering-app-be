Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  resources :users do
    resources :ticks
  end

  resources :areas do
    resources :problems
  end

  resources :problems
  resources :ticks
end
