Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

  resources :users, only: [:index, :create, :show]
  resources :fav_arts, only: [:index, :create, :destroy]
  resources :comments, only: [:index]
end
