Rails.application.routes.draw do
  resources :bookings
  resources :events
  resources :users
#  resource :sessions, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'details/events/:id', to: 'events#show'
  get 'users/:id', to: 'users#show'
  patch '/users/:id', to: 'users#update'
  # get "/loggedin", to: "application#logged_in?
  get 'events',to: 'events#show'
  delete 'events/:id', to: 'events#destroy'
  patch 'events/:id', to: 'events#update'
  post 'bookings', to: 'bookings#create'
 
end
