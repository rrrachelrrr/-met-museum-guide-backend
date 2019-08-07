Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

  resources :users, only: [:index, :create]
  resources :arts, only: [:index]
  resources :fav_arts, only: [:index]
  resources :comments, only: [:index]
end
