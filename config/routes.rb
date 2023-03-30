Rails.application.routes.draw do
  resources :events
  resources :users
#  resource :sessions, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'details/events/:id', to: 'events#show'
  get 'users/:id', to: 'users#show'
  # post '/users', to: 'users#create'
  get "/loggedin", to: "application#logged_in?"
 
end
