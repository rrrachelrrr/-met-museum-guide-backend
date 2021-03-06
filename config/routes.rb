Rails.application.routes.draw do
  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/myart/:id', to: 'users#my_fav_art'
  post '/tag', to: 'fav_art_tags#add_tag_to_art'
  get '/mytags/:id', to: 'fav_arts#my_tags'

  resources :users, only: [:index, :create, :show]
  resources :fav_arts, only: [:index, :create, :destroy]
  resources :tags, only: [:index, :show]
  resources :fav_art_tags, only: [:index, :show]
end
