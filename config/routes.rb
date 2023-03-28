Rails.application.routes.draw do
  resources :events
  resources :users
#  resource :sessions, only: [:create, :destroy]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'details/events/:id', to: 'events#show'
end
