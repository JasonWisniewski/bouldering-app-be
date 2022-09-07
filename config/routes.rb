Rails.application.routes.draw do
  # devise_for :users
  #TODO devise is messing up create users docs below
  # https://www.rubydoc.info/github/plataformatec/devise/ActionDispatch%2FRouting%2FMapper:devise_for
  # devise_for :users do
  #   resources :ticks
  # end

  resources :users do
    resources :ticks
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"

  # resources :users do
  #   resources :ticks
  # end

  resources :areas do
    resources :problems
  end

  resources :problems
  resources :ticks
end
