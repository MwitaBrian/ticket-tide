Rails.application.routes.draw do
  resources :bookings
  resources :events
  resources :users
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'details/events/:id', to: 'events#show'
  get 'users/:id', to: 'users#show'
  patch '/users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
  get "/loggedin", to: "application#logged_in?"
  get 'events',to: 'events#show'
  delete 'events/:id', to: 'events#destroy'
  patch 'events/:id', to: 'events#update'
  post 'bookings', to: 'bookings#create'
  get '/bookings/user/:user_id', to: 'bookings#user_bookings', as: 'user_bookings'
  post '/events/:id/like', to: 'events#like', as: 'like_event'

end
