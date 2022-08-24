Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'sessions#home'

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
